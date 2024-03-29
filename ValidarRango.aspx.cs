using System;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace blog.listings
{
	public class ValidarRango : Page
	{	
		protected Button btnSubmit;
		protected Label lbMsg;
		protected TextBox txtDay,txtMonth,txtYear;
		protected RangeValidator rngvtxtDay,rngvtxtMonth,rngvtxtYear;
		protected RequiredFieldValidator reqvtxtDay,reqvtxtMonth,reqvtxtYear;
		
		protected override void OnInit(EventArgs e){
			this.Load += new EventHandler(g_Load);
			this.btnSubmit.Click += new EventHandler(btnSubmit_Click);
		}
	
		protected void g_Load(Object o,EventArgs e){}
		protected void btnSubmit_Click(Object sender,EventArgs e){
			if(Page.IsValid){
				lbMsg.Text = "Los valores estan correctos";
			}
		}
	}
}
