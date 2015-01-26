package com.shinowit.web;


import com.shinowit.dao.mapper.TbaMembeaddrinfoMapper;
import com.shinowit.dao.mapper.TbaMemberinfoMapper;
import com.shinowit.model.TauOperinfo;
import com.shinowit.model.TbaMemberinfo;
import com.shinowit.tools.Email;
import com.shinowit.tools.HtmlMail;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.mail.MessagingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.UnsupportedEncodingException;
import java.util.List;

/**
 * Created by Administrator on 2014/12/25.
 */
@Controller
@RequestMapping("/reg")
public class regController {

    private boolean success;

    @Resource
    private TbaMemberinfoMapper member;

    private TbaMemberinfo mem;
    @Resource
    private HtmlMail email;

    @RequestMapping("/checkusername")
    @ResponseBody
    public Boolean  Checkusername(@RequestParam("username") String name){

        Boolean b=false;
        TbaMemberinfo memberinfoList=null;
        try {
            memberinfoList= member.selectByname(name);
        }catch (Exception e){
            e.printStackTrace();
        }

        if (memberinfoList==null){
            b=true;
            setSuccess(true);
        }
        return b;
    }

    @RequestMapping("/checkemail")
    @ResponseBody
    public Boolean Checkemail(@RequestParam("Email") String name){

        Boolean b=false;
        TbaMemberinfo memberinfoList=null;
        try {
            memberinfoList= member.selectByname(name);
        }catch (Exception e){
            e.printStackTrace();
        }
        if (memberinfoList==null){
            b=true;
            setSuccess(true);
        }
        return b;
    }

    @RequestMapping("/checkvalid")
    @ResponseBody
    public Boolean Checkvalid(@RequestParam("Validate_Code") String  valid,HttpServletRequest request){
        boolean b=false;
        String rand= (String) request.getSession().getAttribute("rand");
        if (valid.equals(rand)){
            b=true;
        }
        return b;
    }

    @RequestMapping("/reg")
    public void sendEmail(@RequestParam("UserName") String username,@RequestParam("Email") String address,@RequestParam("NewUserName") String newusername,@RequestParam("PassWord") String userpass,HttpServletRequest request,@RequestParam("Validate_Code") String valid){

//        List<TbaMemberinfo> memberinfoList=null;
//        memberinfoList=member.selectAll();
//        request.getSession().setAttribute("memberinfoList",memberinfoList);

        String rand=(String)request.getSession().getAttribute("rand");

        if(valid.equals(rand)){
            mem.setEmail(address);
            mem.setPwd(userpass);
            mem.setUsername(username);
            mem.setLname(newusername);
            member.insert(mem);
        }

        String validstring=request.getSession(true).getId();

        String valid_url="<a href='http://localhost:8080/reg/valid?address="+address+"&validString="+validstring+" ' target='_blank'> http://localhost:8080/reg/valid?address="+address+"&validString="+validstring+"请复制后贴到浏览器</a>";

        try {
            email.sendMessage(address,"激活",valid_url);
        } catch (MessagingException e) {
            e.printStackTrace();
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
    }

    @RequestMapping("/valid")
    public void valid(@RequestParam("address") String address,@RequestParam("validString") String validstring){

        member.selectByname(address);
        System.out.println(validstring);
    }

    public boolean isSuccess() {
        return success;
    }

    public void setSuccess(boolean success) {
        this.success = success;
    }

    public TbaMemberinfo getMem() {
        return mem;
    }

    public void setMem(TbaMemberinfo mem) {
        this.mem = mem;
    }
}