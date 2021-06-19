using FreeSql;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using Microsoft.Extensions.Logging;
using Microsoft.OpenApi.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace FreeSql_Test_MultiDatabaseFilter
{
    public class Startup
    {
        public Startup(IConfiguration configuration)
        {
            Configuration = configuration;
        }

        public IConfiguration Configuration { get; }

        // This method gets called by the runtime. Use this method to add services to the container.
        public void ConfigureServices(IServiceCollection services)
        {
            var masterMySql = "Server=localhost; Port=3306;Stmt=; Database=sunny; Uid=root; Pwd=mysqlPWD;";
            var vehicleGateSqlServer = "Data Source=localhost;Initial Catalog=sunny;Persist Security Info=True;User ID=sa;Password=sa;Max Pool Size=200;connection timeout=600";

            var fsql = new MultiFreeSql();
            fsql.Register("db1", () => new FreeSqlBuilder().UseConnectionString(DataType.MySql, masterMySql)
                                        .UseAutoSyncStructure(true).Build())
                                        .GlobalFilter.Apply<ISoftDelete>("SoftDelete", a => a.IsDelete == false);
            fsql.Register("oldDbSqlServer", () => new FreeSqlBuilder().UseConnectionString(DataType.SqlServer, vehicleGateSqlServer).UseAutoSyncStructure(true).Build());

            services.AddSingleton<IFreeSql>(fsql);

            fsql.GlobalFilter.Apply<ISoftDelete>("SoftDelete", a => a.IsDelete == false);
            services.AddFreeRepository(filter => filter.Apply<ISoftDelete>("SoftDelete", a => a.IsDelete == false), this.GetType().Assembly);

            fsql.Aop.CurdBefore += (s, e) =>
            {
                Console.WriteLine($"FreeSql:{e.Sql}\r\n");
            };

            services.AddControllers();
            services.AddSwaggerGen(c =>
            {
                c.SwaggerDoc("v1", new OpenApiInfo { Title = "FreeSql_Test_MultiDatabaseFilter", Version = "v1" });
            });
        }

        // This method gets called by the runtime. Use this method to configure the HTTP request pipeline.
        public void Configure(IApplicationBuilder app, IWebHostEnvironment env)
        {
            if (env.IsDevelopment())
            {
                app.UseDeveloperExceptionPage();
                app.UseSwagger();
                app.UseSwaggerUI(c => c.SwaggerEndpoint("/swagger/v1/swagger.json", "FreeSql_Test_MultiDatabaseFilter v1"));
            }

            app.UseRouting();

            app.UseAuthorization();

            app.UseEndpoints(endpoints =>
            {
                endpoints.MapControllers();
            });
        }
    }
}
