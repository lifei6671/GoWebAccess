package siteserver

import "github.com/astaxie/beego"

type AccountController struct {
	beego.Controller
}
func (this *AccountController) Login() {
	//TODO http://demo.jeewx.com/qywx/loginController.do?login
	this.Data["Title"] = "用户登录";
	this.Data["Method"] = this.Ctx.Input.Method();

	this.TplName = "siteserver/account/login.tpl";
}
