using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Phobos.BLL
{
    public static class Session
    {
        //Usuario
        private static string _nomeUsuario;
        public static string nomeUsuario
        {
            get { return Session._nomeUsuario; }
            set { Session._nomeUsuario = value; }
        }

    }
}
