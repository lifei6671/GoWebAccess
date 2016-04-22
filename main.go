package main

import (
	_ "GoWebAccess/routers"
	"github.com/astaxie/beego"
)



func main() {
	beego.SetStaticPath("/static","static");
	beego.Run()
}

