using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PROG3.ASP
{
    public partial class About : Page
    {
        public int Recargas
        {
            get
            {
                if (Session["Recargas"] == null)
                    Session["Recargas"] = 0;
                return (int)Session["Recargas"];
            }
            private set
            {
                Session["Recargas"] = value;
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            mensajePrimero.Visible = true;
            lblMensajeSegundo.Visible = false;

            lblUsuarios.Text = "Cantidad de usuarios: " + Application["Usuarios"].ToString(); //está en el global.asax

            if (Page.IsPostBack)
            {
                mensajePrimero.Visible = false;
                lblMensajeSegundo.Visible = true;
                lblMensajeSegundo.Text = "Esta página ya ha sido visitada";

                Recargas += 1;

                lblRecargas.Text = "Cantidad de recargas: " + Convert.ToString(Recargas);
            }
        }
    }
}