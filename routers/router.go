package routers

import (
	"GoWebAccess/controllers"
	"github.com/astaxie/beego"
	"GoWebAccess/controllers/siteserver"
)

func RegisterRoutes()  {
	beego.Router("/", &controllers.MainController{});
	beego.Router("/index",&controllers.HomeController{},"get:Index");

	beego.Router("/admin/",&siteserver.HomeController{},"get:Index");
	beego.Router("/admin/login",&siteserver.AccountController{},"get:Login");
}
func init() {
	RegisterRoutes();
}
