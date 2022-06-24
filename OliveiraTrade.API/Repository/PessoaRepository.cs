using Microsoft.EntityFrameworkCore;
using OliveiraTrade.API.Context;
using OliveiraTrade.Domain;
using OliveiraTrade.Domain.Entities;

namespace OliveiraTrade.API.Repository
{
    public class PessoaRepository
    {
        private readonly DataContext _context;

        public PessoaRepository(DataContext context)
        {
            _context = context;
        }

        public async Task<GenericResult> PostAsync(Pessoa pessoa)
        {
            try
            {
                await _context.Pessoa.AddAsync(pessoa);
                await _context.SaveChangesAsync();
                return new GenericResult(true, "Conta Criada com sucesso.");
            }
            catch (Exception e)
            {
                return new GenericResult(false, "Erro ao criar conta.");
            }
        }

        public async Task<GenericResult> Login(string email, string senha)
        {
            try
            {
                var login = await _context.Pessoa.FirstOrDefaultAsync(x => x.Email == email && x.Senha == senha);
                if (login != null)
                {
                    return new GenericResult(true, "Login Realizado com sucesso");
                }

                return new GenericResult(false, "Usuário ou senha inválido.");
                
            }
            catch (Exception e)
            {
                return new GenericResult(false, "Erro Interno");
            }
        }

    }
}
