using Phobos.DAL;//
using Phobos.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Phobos.BLL
{
    public class UsuarioBLL
    {
        //objeto global
        UsuarioDAL objBLL = new UsuarioDAL();

        //create
        public void CadastrarUser(UsuarioDTO objCadUser)
        {
            objBLL.Cadastrar(objCadUser);
        }

        //read
        public List<UsuarioListDTO> ListarUsuario() 
        {
            return objBLL.Listar();
        }

        // update
        public void EditUser(UsuarioDTO objEdit) 
        { 
            objBLL.Editar(objEdit);
        }

        //delete
        public void DeleteUser(int objDelete) 
        {
            objBLL.Excluir(objDelete);
        }

        //autenticar
        public UsuarioAutenticaDTO AutenticaUsuario(string objNome, string objSenha)
        {
            UsuarioAutenticaDTO user = objBLL.Autenticar(objNome, objSenha);
            if (user != null)
            {
                return user;
            }
            else
            {
                throw new Exception("Deu problema BLL !!");
            }
        }

        //selecionar por id
        public UsuarioDTO SelectPorId(int objModelo)
        {
            return objBLL.BuscaPorId(objModelo);
        }
    }
}
