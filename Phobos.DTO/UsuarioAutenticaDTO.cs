using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Phobos.DTO
{
    public class UsuarioAutenticaDTO
    {
        public string nomeUsuario { get; set; }
        public string senhaUsuario { get; set; }
        public int usuarioTp { get; set; }
    }
}
