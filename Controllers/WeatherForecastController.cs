using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using Sunny.Core.IBMS.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace FreeSql_Test_MultiDatabaseFilter.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class WeatherForecastController : ControllerBase
    {
        private static readonly string[] Summaries = new[]
        {
            "Freezing", "Bracing", "Chilly", "Cool", "Mild", "Warm", "Balmy", "Hot", "Sweltering", "Scorching"
        };

        private readonly ILogger<WeatherForecastController> _logger;
        private readonly IFreeSql _freeSql;

        public WeatherForecastController(IFreeSql freeSql, ILogger<WeatherForecastController> logger)
        {
            _freeSql = freeSql;
            _logger = logger;
        }

        [HttpGet]
        public int GetLocal()
        {
            var model = _freeSql.Select<SunnyLocalfile>().ToList();

            return model.Count();
        }

    }
}
