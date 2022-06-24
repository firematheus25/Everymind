using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OliveiraTrade.Domain.Entities
{
    public class Pessoa
    {
        [Key]
        public int Id { get; set; }

        [Required(ErrorMessage = "Prencher o nome.")]
        [StringLength(100, MinimumLength = 3, ErrorMessage = "O Nome deve ter no mínimo {2} e no máximo {1} caracteres.")]
        public string Nome { get; set; }

        [Required(ErrorMessage = "Prencher o CPF")]
        [RegularExpression(@"^[0-9]{11}", ErrorMessage = "O CPF deve ser numérico com 11 dígitos.")]
        public string CPF { get; set; }

        [Required(ErrorMessage = "Informe o Sexo.")]
        public string Sexo { get; set; }

        [Required(ErrorMessage = "Informe a Data de Nascimento.")]
        public DateTime Nascimento { get; set; }

        [Required(ErrorMessage = "Prencher o Email.")]
        public string Email { get; set; }

        [Required(ErrorMessage = "Prencher a Senha.")]
        public string Senha { get; set; }
    }
}
