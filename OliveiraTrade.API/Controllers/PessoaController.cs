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

        [HttpGet("v1/Pessoa/login/email/{email}/senha/{senha}")]
        public async Task<GenericResult> Login([FromRoute] string email, [FromRoute] string senha)
            => await _pessoaRepository.Login(email, senha);

        [HttpPost("v1/pessoa")]
        public async Task<GenericResult> Post([FromBody] Pessoa pessoa)
            => await _pessoaRepository.PostAsync(pessoa);
    }
}
