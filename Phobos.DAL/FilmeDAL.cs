using MySql.Data.MySqlClient;//
using Phobos.DTO;//
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Phobos.DAL
{
    public class FilmeDAL:Conexao
    {
        //Create
        public void Cadastrar(FilmeDTO objCad)
        {
            try
            {
                Conectar();
                cmd = new MySqlCommand("INSERT INTO filme(tituloFilme, generoFilme, produtoraFilme, urlImagemFilme, idClassificacao) VALUES (@tituloFilme,@generoFilme,@produtoraFilme,@urlImagemFilme,@idClassificacao)", conn);
                cmd.Parameters.AddWithValue("@tituloFilme", objCad.tituloFilme);
                cmd.Parameters.AddWithValue("@generoFilme", objCad.generoFilme);
                cmd.Parameters.AddWithValue("@produtoraFilme", objCad.produtoraFilme);
                cmd.Parameters.AddWithValue("@urlImagemFilme", objCad.urlImagemFilme);
                cmd.Parameters.AddWithValue("@idClassificacao", objCad.idClassificacao);
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {

                throw new Exception("Erro ao cadastrar" + ex.Message);
            }
            finally
            {
                Desconectar();
            }

        }

        //Read
        public List<FilmeListDTO> Listar()
        {
            try
            {
                Conectar();
                cmd = new MySqlCommand("SELECT tituloFilme, generoFilme, descricaoClassificacao FROM filme INNER JOIN classificacao ON filme.idClassificacao = classificacao.idClassificacao;", conn);
                dr = cmd.ExecuteReader();
                //ponteiro
                List<FilmeListDTO> Lista = new List<FilmeListDTO>();
                while (dr.Read())
                {
                    FilmeListDTO obj = new FilmeListDTO();
                    obj.tituloFilme = dr["tituloFilme"].ToString();
                    obj.generoFilme = dr["generoFilme"].ToString();
                    obj.descricaoClassificacao = dr["descricaoClassificacao"].ToString();

                    //add a lista
                    Lista.Add(obj);
                }
                return Lista;
            }
            catch (Exception ex)
            {

                throw new Exception("Erro ao listar filmes"+ex.Message);
            }
            finally
            {
                Desconectar();
            }
        }

        //update
        public void Editar(FilmeDTO objEdit)
        {
            try
            {
                Conectar();
                cmd = new MySqlCommand("UPDATE filme SET tituloFilme= @tituloFilme, generoFilme = @generoFilme, produtoraFilme = @produtoraFilme, urlImagemFilme = @urlImagemFilme, idClassificacao = @idClassificacao WHERE idFilme = @idFilme", conn);
                cmd.Parameters.AddWithValue("@tituloFilme", objEdit.tituloFilme);
                cmd.Parameters.AddWithValue("@generoFilme", objEdit.generoFilme);
                cmd.Parameters.AddWithValue("@produtoraFilme", objEdit.produtoraFilme);
                cmd.Parameters.AddWithValue("@urlImagemFilme", objEdit.urlImagemFilme);
                cmd.Parameters.AddWithValue("@idClassificacao", objEdit.idClassificacao);
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {

                throw new Exception("Erro ao editar filme" + ex.Message);
            }
            finally
            {
                Desconectar();
            }
        }

        //delete
        public void Excluir(int objDel)
        {
            try
            {
                Conectar();
                cmd = new MySqlCommand("DELETE FROM filme WHERE idfilme = @idfilme", conn);
                cmd.Parameters.AddWithValue("@idfilme", objDel);
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {

                throw new Exception("Erro ao excluir filme" + ex.Message);
            }
            finally
            {
                Desconectar();
            }
        }
    }
}
