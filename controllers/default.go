package controllers

import (
	"github.com/astaxie/beego"
)

type MainController struct {
	beego.Controller
}

func (c *MainController) Get() {
	c.Data["Website"] = "dupub.com"
	c.Data["Email"] = "hongguozb@163.com"
	c.TplName = "index.tpl"
}

type SubController  struct{
	beego.Controller
}

func (c *SubController) Get(){
	c.Ctx.WriteString("hello world")
}