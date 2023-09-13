using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using WEBAPI_Ufinet.Models;

namespace WEBAPI_Ufinet.Data
{
    public class PaisData
    {
        public static List<Paises> Listar(int numpag, int registros)
        {
            List<Paises> oListaPaises = new List<Paises>();
            using (SqlConnection oConexion = new SqlConnection(ConexionSQL.conexionSQL))
            {
                SqlCommand cmd = new SqlCommand("listar_pais", oConexion);
                cmd.CommandType = CommandType.StoredProcedure;

                try
                {
                    oConexion.Open();
                    cmd.ExecuteNonQuery();

                    using (SqlDataReader dr = cmd.ExecuteReader())
                    {

                        while (dr.Read())
                        {
                            oListaPaises.Add(new Paises()
                            {
                                Cod_Pais = Convert.ToInt32(dr["Cod_Pais"]),
                                Nombre = dr["Nombre"].ToString(),
                                Cod_ISO = dr["Cod_ISO"].ToString()
                                //Cod_Restaurante = Convert.ToInt32(dr["Cod_Restaurante"]),
                                //Nom_Restaurante = dr["Nom_Restaurante"].ToString(),
                                //Cod_Hotel = Convert.ToInt32(dr["Cod_Hotel"]),
                                //Nom_Hotel = dr["Nom_Hotel"].ToString()



                            });
                        }

                    }

                    var registrosPaginados = oListaPaises.Skip((numpag - 1) * registros).Take(registros).ToList();

                    return registrosPaginados;
                }
                catch (Exception ex)
                {
                    return oListaPaises;
                }
            }
        }

        public static Paises Obtener(string filter)
        {
            Paises oPais = new Paises();
            using (SqlConnection oConexion = new SqlConnection(ConexionSQL.conexionSQL))
            {
                SqlCommand cmd = new SqlCommand("Obt_Pais", oConexion);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@filter", filter);

                try
                {
                    oConexion.Open();
                    cmd.ExecuteNonQuery();

                    using (SqlDataReader dr = cmd.ExecuteReader())
                    {

                        while (dr.Read())
                        {
                            oPais = new Paises()
                            {
                                Cod_Pais = dr.GetInt32(0),
                                Nombre = dr.GetString(1),
                                Cod_ISO = dr.GetString(2),
                                Cod_Hotel = dr.GetInt32(3),
                                Nom_Hotel = dr.GetString(4),
                                Cod_Restaurante = dr.GetInt32(5),
                                Nom_Restaurante = dr.GetString(6)

                            };
                        }

                    }



                    return oPais;
                }
                catch (Exception ex)
                {
                    return oPais;
                }
            }
        }

    }
}