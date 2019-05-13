//引入上一级目录下的mysql连接池对象
const pool=require('../pool.js');
const express=require('express');
//创建空路由器
var router=express.Router();
//添加路由
//1.用户注册
router.get("/proindex",(req,res)=>{
  var opt={
    index:{},
    list:{}
  }
  var sql='SELECT  * FROM proIndex'
  pool.query(sql,(err,result)=>{
      if(err)throw err
      opt.index=result
      pool.query('SELECT  * FROM proIntroduce',(err,result)=>{
        if(err)throw err
        opt.list=result
        res.send(opt)
    })
  })
})
router.get("/proList",(req,res)=>{
  pool.query("SELECT * FROM  proList",(err,result)=>{
    if(err)throw err
    res.send(result)
})
})
router.get("/proLine",(req,res)=>{
  pool.query("SELECT * FROM  proLine",(err,result)=>{
    if(err)throw err
    res.send(result)
})
})
router.get("/proRoom",(req,res)=>{
  var pid=parseInt(req.query.pid)
  pool.query("SELECT * FROM  proRoom WHERE pro_id=?",pid,(err,result)=>{
    if(err)throw err
    res.send(result)
  })
})
router.get("/proAddr",(req,res)=>{
  var rid=parseInt(req.query.rid)
  pool.query("SELECT * FROM  proAddr WHERE r_id=?",rid,(err,result)=>{
    if(err)throw err
    res.send(result)
  })
})

router.get("/proSystem",(req,res)=>{
  pool.query("SELECT *  FROM  proSystem",(err,result)=>{
    if(err)throw err
    res.send(result)
  })
})
router.get("/proEdition",(req,res)=>{
  var eid=parseInt(req.query.eid)
  pool.query("SELECT *  FROM  proEdition WHERE eid=?",eid,(err,result)=>{
    if(err)throw err
    res.send(result)
  })
})

router.post("/proInfo",(req,res)=>{
  var obj=req.body
  var line=obj.line
  var address=obj.address
  var power=obj.power
  var height=obj.height
  var ip=obj.ip
  var bandwidth=obj.bandwidth
  var interface= obj.interface
  var system= obj.system
  var ddos=obj.ddos
  var time= obj.time
  var count= obj.count
  var price= obj.price
  var username=obj.username
  var userphone=parseInt(obj.userphone)
  console.log(userphone)
  if(!username){
    res.send('请输入购买人姓名！')
    return
  }
  if(!userphone){
    res.send('请输入手机号！')
    return
  }
  var sql=`INSERT INTO proInformation VALUES(NULL,'${line}','${address}','${power}','${height}','${ip}','${bandwidth}','${interface}','${system}','${ddos}','${time}','${count}','${price}','${username}','${userphone}')`
  console.log(sql)
  pool.query(sql,(err,result)=>{
    if(err) throw err
    if(result.affectedRows>0){
      res.send({code:1,msg:'提交成功'})
    }else{
      res.send({code:-1,msg:'提交失败'})
    }
  })
})

module.exports=router;
