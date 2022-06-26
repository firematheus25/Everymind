using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;
using Newtonsoft.Json;
using OliveiraTrade.Domain;
using OliveiraTrade.Domain.Entities;

namespace OliveiraTrade.WPF.Services
{
    public class HttpRequestMethods<T>
    {
        public async Task<GenericResult> PostAsync(T Object)
        {
            using (var client = new HttpClient())
            {
                var url = new Client<T>().BuilderUri();

                var Json = JsonConvert.SerializeObject(Object, Formatting.None);

                var content = new StringContent(Json, Encoding.UTF8, "application/Json");

                var result = await client.PostAsync(url, content);

                var json = await result.Content.ReadAsStringAsync();


                return JsonConvert.DeserializeObject<GenericResult>(json);
            }
        }


        public async Task<GenericResult> PutAsync(T Object)
        {
            using (var client = new HttpClient())
            {
                var url = new Client<T>().BuilderUri();

                var Json = JsonConvert.SerializeObject(Object, Formatting.None);

                var content = new StringContent(Json, Encoding.UTF8, "application/Json");

                var result = await client.PutAsync(url, content);

                var json = await result.Content.ReadAsStringAsync();


                return JsonConvert.DeserializeObject<GenericResult>(json);
            }
        }

        public async Task<GenericResult> LoginAsync(T Object)
        {
            using (var client = new HttpClient())
            {
                var url = new Client<T>().BuilderUri();

                var Json = JsonConvert.SerializeObject(Object, Formatting.None);

                var content = new StringContent(Json, Encoding.UTF8, "application/Json");

                var result = await client.PostAsync(url, content);

                var json = await result.Content.ReadAsStringAsync();


                var genericResult = JsonConvert.DeserializeObject<GenericResult>(json);
                if (genericResult.Data != null)
                {
                    var data = JsonConvert.DeserializeObject<Pessoa>(genericResult.Data.ToString());
                    genericResult.Data = data;
                }

                return genericResult;
            }
        }

    }
}
