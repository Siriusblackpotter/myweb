//引入上一级目录下的mysql连接池对象
const pool=require('../pool.js');
const express=require('express');
//创建空路由器
var router=express.Router();
//添加路由
//1.用户注册
router.get("/",(req,res)=>{
  pool.query("SELECT * FROM indeximg",(err,result)=>{
      if(err)throw err
      res.send(result)
  })
})
module.exports=router;