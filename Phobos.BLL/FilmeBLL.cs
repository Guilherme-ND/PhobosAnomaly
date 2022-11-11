using Phobos.DAL;//
using Phobos.DTO;//
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Phobos.BLL
{
    public class FilmeBLL
    {
        //objeto global
        FilmeDAL objBLL = new FilmeDAL();

        //create
        public void CadastrarFilme(FilmeDTO objCadFilme)
        {
            objBLL.Cadastrar(objCadFilme);
        }

        //read
        public List<FilmeListDTO> ListarFilme()
        {
            return objBLL.Listar();
        }

        // update
        public void EditFilme(FilmeDTO objEdit)
        {
            objBLL.Editar(objEdit);
        }

        //delete
        public void DeleteFilme(int objDelete)
        {
            objBLL.Excluir(objDelete);
        }

        //selecionar por id
        public FilmeDTO SelectPorId(int objModelo)
        {
            return objBLL.BuscaPorId(objModelo);
        }
    }
}
