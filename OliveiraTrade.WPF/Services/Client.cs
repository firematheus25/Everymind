using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OliveiraTrade.WPF.Services
{
    public class Client<T>
    {
        public string BaseAddress { get; set; } = "https://localhost:7080";
        protected string Entity { get; } = typeof(T).Name;

        public Client()
        {

        }

        public Uri BuilderUri()
            => new Uri($"{BaseAddress}/v1/{Entity.ToLower()}");
        public Uri BuilderUri(int id)
            => new Uri($"{BaseAddress}/v1/{Entity.ToLower()}/id/{id}");
        public Uri BuilderUri(string keyWord)
            => new Uri($"{BaseAddress}/v1/{Entity.ToLower()}/keyWord/{keyWord}");
    }
}
