package siteserver

import "github.com/astaxie/beego"

type AccountController struct {
	beego.Controller
}
func (this *AccountController) Login() {
	this.Data["Title"] = "用户登录";
	this.Data["Method"] = this.Ctx.Input.Method();

	this.TplName = "siteserver/account/login.tpl";
}
