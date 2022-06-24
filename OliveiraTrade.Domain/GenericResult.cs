using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OliveiraTrade.Domain
{
    public class GenericResult
    {
        public GenericResult()
        {

        }
        public GenericResult(bool success, string message, Object data = null)
        {
            Success = success;
            Message = message;
            Data = data;
        }

        public bool Success { get; set; }
        public string Message { get; set; }
        public Object Data { get; set; }
    }
}
