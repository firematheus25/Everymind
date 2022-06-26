using System.ComponentModel.DataAnnotations;
using Microsoft.AspNetCore.Mvc;
using OliveiraTrade.API.Repository;
using OliveiraTrade.Domain;
using OliveiraTrade.Domain.Entities;

namespace OliveiraTrade.API.Controllers
{
    [ApiController]
    public class PessoaController : ControllerBase
    {
        private readonly PessoaRepository _pessoaRepository;

        public PessoaController(PessoaRepository pessoaRepository)
        {
            _pessoaRepository = pessoaRepository;
        }

        [HttpPost("v1/login")]
        public async Task<GenericResult> Login([FromBody] Login login)
            => await _pessoaRepository.Login(login);

        [HttpPost("v1/pessoa")]
        public async Task<GenericResult> Post([FromBody] Pessoa pessoa)
            => await _pessoaRepository.PostAsync(pessoa);

        [HttpPut("v1/pessoa")]
        public async Task<GenericResult> Put([FromBody] Pessoa pessoa)
            => await _pessoaRepository.PutAsync(pessoa);
    }

}
