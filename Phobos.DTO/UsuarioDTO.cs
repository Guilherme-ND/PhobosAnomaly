using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Phobos.DTO
{
    public class UsuarioDTO
    {
        public int idUsuario { get; set; }
        public string nomeUsuario { get; set; }
        public string emailUsuario { get; set; }
        public string senhaUsuario { get; set; }
        public DateTime dataNascUsuario { get; set; }
        public int usuarioTp { get; set; }
    }
}