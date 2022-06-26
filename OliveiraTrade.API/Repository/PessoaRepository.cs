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

        public async Task<GenericResult> PutAsync(Pessoa pessoa)
        {
            try
            {
                _context.Pessoa.Update(pessoa);
                await _context.SaveChangesAsync();
                return new GenericResult(true, "Cadastro atualizado com sucesso.");
            }
            catch (Exception e)
            {
                return new GenericResult(false, "Erro ao atualizar conta.");
            }
        }

        public async Task<GenericResult> Login(Login login)
        {
            try
            {
                var pessoa = await _context.Pessoa.FirstOrDefaultAsync(x => x.Email == login.Email && x.Senha == login.Senha);
                if (pessoa != null)
                {
                    return new GenericResult(true, "Login Realizado com sucesso", pessoa);
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
