using MySql.Data.MySqlClient;//inserido manualmente
using Phobos.DTO;//inserido manualmente
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Phobos.DAL
{
    public class UsuarioDAL:Conexao
    {
        //Create
        public void Cadastrar(UsuarioDTO objCad)
        {
            try
            {
                Conectar();
                cmd = new MySqlCommand("INSERT INTO usuario (nomeUsuario,emailUsuario,senhaUsuario,dataNascUsuario,usuarioTp) Values (@nomeUsuario,@emailUsuario,@senhaUsuario,@dataNascUsuario,@usuarioTp)", conn);
                cmd.Parameters.AddWithValue("@nomeUsuario", objCad.nomeUsuario);
                cmd.Parameters.AddWithValue("@emailUsuario", objCad.emailUsuario);
                cmd.Parameters.AddWithValue("@senhaUsuario", objCad.senhaUsuario);
                cmd.Parameters.AddWithValue("@dataNascUsuario", objCad.dataNascUsuario);
                cmd.Parameters.AddWithValue("@usuarioTp", objCad.usuarioTp);
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {

                throw new Exception("Erro ao cadastrar !!" + ex.Message);
            }     
            finally
            {
                Desconectar();
            }
        }

        //Read
        public List<UsuarioListDTO> Listar()
        {
            try
            {
                Conectar();
                cmd = new MySqlCommand("SELECT nomeUsuario,emailUsuario, descricaoTipoUsuario FROM usuario INNER JOIN tipousuario ON usuario.usuarioTp = tipousuario.idTipoUsuario", conn);
                dr = cmd.ExecuteReader();
                //ponteiro = Lista vazia
                List<UsuarioListDTO> Lista = new List<UsuarioListDTO>();
                while (dr.Read())
                {
                    UsuarioListDTO obj = new UsuarioListDTO();
                    obj.nomeUsuario = dr["nomeUsuario"].ToString();
                    obj.emailUsuario = dr["emailUsuario"].ToString();
                    obj.descricaoTipoUsuario = dr["descricaoTipoUsuario"].ToString();

                    //adicionar a lista
                    Lista.Add(obj);
                }
                return Lista;
            }
            catch (Exception ex)
            {

                throw new Exception("Erro ao listar registros !!" + ex.Message);
            }
            finally
            {
                Desconectar();
            }
        }

        //Update
        public void Editar(UsuarioDTO objEdit)
        {
            try
            {
                Conectar();
                cmd = new MySqlCommand("UPDATE usuario SET nomeUsuario = @nomeUsuario, emailUsuario = @emailUsuario, senhaUsuario = @senhaUsuario, dataNascUsuario = @dataNascUsuario, usuarioTp = @usuarioTp WHERE idUsuario = @idUsuario", conn);
                cmd.Parameters.AddWithValue("@nomeUsuario", objEdit.nomeUsuario);
                cmd.Parameters.AddWithValue("@emailUsuario", objEdit.emailUsuario);
                cmd.Parameters.AddWithValue("@senhaUsuario", objEdit.senhaUsuario);
                cmd.Parameters.AddWithValue("@dataNascUsuario", objEdit.dataNascUsuario);
                cmd.Parameters.AddWithValue("@usuarioTp", objEdit.usuarioTp);
                cmd.Parameters.AddWithValue("@idUsuario", objEdit.idUsuario);
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {

                throw new Exception ("Erro ao editar usuário" + ex.Message);
            }
            finally 
            {
                Desconectar();
            }
        }

        //Delete
        public void Excluir(int objDel)
        {
            try
            {
                Conectar();
                cmd = new MySqlCommand("DELETE FROM usuario WHERE idUsuario = @idUsuario", conn);
                cmd.Parameters.AddWithValue("@idUsuario", objDel);
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {

                throw new Exception ("Erro ao excluir registro" + ex.Message);
            }
            finally 
            {
                Desconectar();
            }
        }

        //Autenticar
        public UsuarioAutenticaDTO Autenticar(string objNome, string objSenha)
        {
            try
            {
                Conectar();
                cmd = new MySqlCommand("SELECT nomeUsuario, senhaUsuario, usuarioTp FROM usuario WHERE nomeUsuario = @nomeusuario AND senhaUsuario = @senhaUsuario", conn);
                cmd.Parameters.AddWithValue("@nomeUsuario", objNome);
                cmd.Parameters.AddWithValue("@senhaUsuario", objSenha);
                dr = cmd.ExecuteReader();

                UsuarioAutenticaDTO obj = null;
                if (dr.Read())
                {
                    obj = new UsuarioAutenticaDTO();
                    obj.nomeUsuario = dr["nomeUsuario"].ToString();
                    obj.senhaUsuario = dr["senhaUsuario"].ToString();
                    obj.usuarioTp = Convert.ToInt32(dr["usuarioTp"]);
                }
                return obj;

            }
            catch (Exception ex)
            {

                throw new Exception ("Erro ao autenticar" + ex.Message);
            }
            finally 
            {
                Desconectar();
            }
        }
      
        //BuscarPorId
        public UsuarioDTO BuscaPorId(int idUsuario)
        {
            try
            {
                Conectar();
                cmd = new MySqlCommand("SELECT * FROM usuario WHERE idUsuario = @idUsuario", conn);
                cmd.Parameters.AddWithValue("@idUsuario", idUsuario);
                dr = cmd.ExecuteReader();

                UsuarioDTO obj = null;
                if (dr.Read())
                {
                    obj = new UsuarioDTO();
                    obj.idUsuario = Convert.ToInt32(dr["idUsuario"]);
                    obj.nomeUsuario = dr["nomeUsuario"].ToString();
                    obj.emailUsuario = dr["emailUsuario"].ToString();
                    obj.senhaUsuario = dr["senhaUsuario"].ToString();
                    obj.dataNascUsuario = dr["dataNascUsuario"].ToString();
                    obj.usuarioTp = dr["usuarioTp"].ToString();

                }
                return obj;

            }
            catch (Exception ex)
            {

                throw new Exception ("Erro ao buscar registro !!" + ex.Message);
            }
            finally
            {
                Desconectar();
            }
        }

        //Listar Admin
        public List<UsuarioDTO> ListarAdmin()
        {
            try
            {
                Conectar();
                cmd = new MySqlCommand("SELECT usuario.id,nomeUsuario,senhaUsuario,emailUsuario,dataNascUsuario,descricaoTipoUsuario FROM usuario INNER JOIN tipousuario ON usuario.usuarioTp = tipousuario.idTipoUsuario", conn);
                dr = cmd.ExecuteReader();
                //ponteiro = Lista vazia
                List<UsuarioDTO> Lista = new List<UsuarioDTO>();
                while (dr.Read())
                {
                    UsuarioDTO obj = new UsuarioDTO();
                    obj.idUsuario = Convert.ToInt32(dr["idUsuario"]);
                    obj.nomeUsuario = dr["nomeUsuario"].ToString();
                    obj.emailUsuario = dr["emailUsuario"].ToString();
                    obj.senhaUsuario = dr["senhaUsuario"].ToString();
                    obj.dataNascUsuario = Convert.ToDateTime(dr["dataNascUsuario"]).ToString("dd/mm/yyyy");
                    obj.usuarioTp = dr["descricaoTipoUsuario"].ToString();

                    //adicionar a lista
                    Lista.Add(obj);
                }
                return Lista;
            }
            catch (Exception ex)
            {

                throw new Exception("Erro ao listar registros !!" + ex.Message);
            }
            finally
            {
                Desconectar();
            }
        }

    }
}
