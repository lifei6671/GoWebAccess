package siteserver

import "github.com/astaxie/beego"

type HomeController struct {
	beego.Controller
}
func (this *HomeController) Index() {
	this.Data["Title"] = "博客后台管理系统";
	this.Data["Content"] = "首页";
	this.TplName = "siteserver/home/index.tpl"
}
