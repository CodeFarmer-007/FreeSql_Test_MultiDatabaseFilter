using FreeSql.DatabaseModel;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Threading.Tasks;
using Newtonsoft.Json;
using FreeSql.DataAnnotations;

namespace Sunny.Core.IBMS.Entities
{

    [JsonObject(MemberSerialization.OptIn), Table(Name = "sunny_localfile", DisableSyncStructure = true)]
    public partial class SunnyLocalfile
    {

        [JsonProperty, Column(DbType = "bigint", IsPrimary = true, IsIdentity = true)]
        public long Id { get; set; }

        /// <summary>
        /// 创建时间
        /// </summary>
        [JsonProperty, Column(DbType = "datetime")]
        public DateTime? CreatedTime { get; set; }

        /// <summary>
        /// 创建人Id
        /// </summary>
        [JsonProperty, Column(DbType = "bigint")]
        public long? CreatedUserId { get; set; }

        /// <summary>
        /// 创建人
        /// </summary>
        [JsonProperty]
        public string CreatedUserName { get; set; }

        /// <summary>
        /// 文件路径
        /// </summary>
        [JsonProperty]
        public string FilePath { get; set; }

        /// <summary>
        /// 是否删除
        /// </summary>
        [JsonProperty]
        public bool IsDelete { get; set; }

    }

}
