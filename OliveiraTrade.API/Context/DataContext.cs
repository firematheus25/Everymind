using Microsoft.EntityFrameworkCore;
using OliveiraTrade.Domain.Entities;

namespace OliveiraTrade.API.Context
{
    public class DataContext :DbContext
    {
        public DataContext(DbContextOptions option) : base(option)
        {
        }



        public DbSet<Pessoa> Pessoa { get; set; }

    }
}
