package controllers

import "github.com/astaxie/beego"

type HomeController struct {
	beego.Controller
}

func (this *HomeController) Index(){
	this.Data["Title"] = "李飞麟的博客";
	this.TplName = "home/index.tpl";
}