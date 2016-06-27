//
//  ViewController.swift
//  col
//
//  Created by 李伯阳  Lok’Tar Ogar on 16/6/23.
//  Copyright © 2016年 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
  
    
    @IBOutlet weak var x: UITextField!
   
    //var  显示缓存=""
    //var  cache=0.0
    var  result:Double=0.0
    var  num1:Double=0.0
    var  num2:Double=0.0
    var  b_fuzhi:Bool=false
    var  b_state:Bool=false
    var  b_dain:Bool=false
    @IBAction func ActBtn1(sender: AnyObject) {
         shuru ("1")
    }
    @IBAction func ActBtn2(sender: AnyObject) {
        shuru ("2")
    }
    @IBAction func ActBtn3(sender: AnyObject) {
        shuru ("3")
    }
    @IBAction func ActBtn4(sender: AnyObject) {
        shuru ("4")
        
    }
    @IBAction func ActBtn5(sender: AnyObject) {
        shuru ("5")
    }
    @IBAction func ActBtn6(sender: AnyObject) {
        shuru ("6")
    }
    @IBAction func ActBtn7(sender: AnyObject) {
        shuru ("7")
    }
    @IBAction func ActBtn8(sender: AnyObject) {
        shuru ("8")
    }
    @IBAction func ActBtn9(sender: AnyObject) {
        shuru("9")
    }
    @IBAction func ActBtnC(sender: AnyObject) {
        //显示缓存 = ""
        //self.x.text = ""
        result=0.0
        num1=0.0
        num2=0.0
        b_fuzhi=false
        b_state=false
        b_dain=false
        x.text="0."
        
    }
    @IBAction func ActBtn0(sender: AnyObject) {
        //shuru ("0")
        if(b_state==false)
        {
            x.text="0"
        }
        else
        {
            x.text=x.text!+"0"
        }
    }
    @IBAction func dain(sender: AnyObject) {
        if(b_state==false)
        {
            x.text="0."
            b_state=true
            b_dain=true
        }
        else if(b_dain==false)
        {
            x.text=x.text!+"."
            b_dain=true
        }
    }
    @IBAction func jiajian(sender: AnyObject) {
        var gg:Double=(x.text! as NSString).doubleValue
        if(gg>0)
        {
            x.text="-"+x.text!
        }
        else
        {
            gg=abs(gg)
            var a:Int=(Int)(gg)
            var b:Double=(Double)(gg)
            if(b==gg)
            {
                x.text="\(a)"
            }
            else
            {
                x.text="\(gg)"
            }
        }
    }
    var fuhao:String=""
    func jjcc(fu:String)
    {
        Fuzhi()
        fuhao=fu
        b_state=false
    }
    
    @IBAction func jian(sender: AnyObject) {
        jjcc("jian")
    }
    @IBAction func jia(sender: AnyObject) {
        jjcc("jia")
    }
    @IBAction func bfh(sender: AnyObject) {
        num1=(x.text! as NSString).doubleValue
        result=num1/100
        x.text="\(result)"
    }
    @IBAction func chen(sender: AnyObject) {
        jjcc("chen")
    }
    @IBAction func chu(sender: AnyObject) {
        jjcc("chu")
    }
    @IBAction func dengyu(sender: AnyObject) {
        if(b_state==true)
        {
            num2=0
        }
        Fuzhi()
        if(fuhao=="jia")
        {
            result=num1+num2
        }
        else if(fuhao=="jian")
        {
            result=num1-num2
        }
        else if(fuhao=="chen")
        {
            result=num1*num2
        }
        else if(fuhao=="chu")
        {
            result=num1/num2
        }
        else
        {
            result=num1
        }
        b_fuzhi=false
        b_state=false
        x.text="\(result)"
        //var result1:Int=(Int)(result)
        //var result2:Double=(Double)(result1)
        /*if(result2==result)
        {
            x.text="\(result1)"
            
        }
        else
        {
            x.text="\(result)"
        }*/
    }
    func shuru (number:String)
    {
        if(b_state==false)
        {
            x.text=number
            b_state=true
        }
        else
        {
            x.text=x.text!+number
        }
    }
    func Fuzhi()
    {
        if(b_fuzhi==false)
        {
            num1=(x.text! as NSString).doubleValue
            b_fuzhi=true
        }
        else
        {
            num2=(x.text! as NSString).doubleValue
            b_fuzhi=true
        }
    }
    /*func 求值()
    {
        if !显示缓存.isEmpty
        {
            let P = 显示缓存 as NSString
            cache = P.doubleValue
            显示缓存 = ""
        }
    }*/
    
}

