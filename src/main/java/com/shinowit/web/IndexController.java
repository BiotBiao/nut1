package com.shinowit.web;

import com.shinowit.dao.mapper.TbaMemberinfoMapper;
import com.shinowit.dao.mapper.TmeMerchandisecinfoMapper;
import com.shinowit.dao.mapper.TmeMerchandiseinfoMapper;
import com.shinowit.model.TbaMemberinfo;
import com.shinowit.model.TbaMemberinfoCriteria;
import com.shinowit.model.TmeMerchandisecinfo;
import com.shinowit.model.TmeMerchandiseinfo;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.mail.Session;
import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2014/12/25.
 */
@Controller
@RequestMapping("/main")
public class IndexController {

    private boolean success;

    @Resource
    private JdbcTemplate jdbcTemplatel;
    @Resource
    private TmeMerchandisecinfoMapper merc;

    @Resource
    private TmeMerchandiseinfoMapper mer;

    @RequestMapping("/merchandisecid")
    @ResponseBody
    public  List<TmeMerchandiseinfo> Findmerchandise(@RequestParam("merchandisecid")String merchandisecid){
        List<TmeMerchandiseinfo> merchandiselist=null;
        try{
            merchandiselist=mer.selectBymerchandisecid(merchandisecid);
        }catch (Exception e){
            e.printStackTrace();
        }
        if (merchandiselist!=null){
            setSuccess(true);
        }
//        List<TmeMerchandiseinfo> merchandiselist=merc.selectBymerchandisecid(merchandisecid);
        return merchandiselist;
    }

    @RequestMapping("/merchandiseid")
    public String Findmerchand(@RequestParam("merchandiseid") String merchandiseid){

        List<TmeMerchandiseinfo> merchandiseinfoList = null;
        try{
            merchandiseinfoList= (List<TmeMerchandiseinfo>) mer.selectByPrimaryKey(merchandiseid);
        }catch (Exception e){
            e.printStackTrace();
        }
        if(merchandiseinfoList!=null){
            setSuccess(true);
        }
        return "index";
    }

    @RequestMapping("/index")
    public String index(HttpServletRequest request){
        List<TmeMerchandisecinfo> list;
        List<TmeMerchandiseinfo> merchandiselist;
        Integer pagesize= (Integer) request.getSession().getAttribute("pagesize");
        Integer limit= (Integer) request.getSession().getAttribute("limit");
        try {
            List<TmeMerchandiseinfo> merlist=mer.selectmerchaandisebypage(pagesize,limit);
            list=merc.selectBylist();
            request.getSession(true).setAttribute("merchandisec_list",list);
            merchandiselist=mer.selectmerchandise();
            request.getSession(true).setAttribute("merlist",merlist);
            request.getSession(true).setAttribute("merchandise",merchandiselist);
//            memberlist=member.selectMemberWithUserNameandUserPass(username,pwd);
        }catch (Exception e){
            e.printStackTrace();
        }
        return "index";
    }

    @RequestMapping("/page")
    public String page(@RequestParam("limit") Integer  limit,HttpServletRequest request){

        if (limit<0){
            limit=0;
        }
        List<Map<String, Object>> merlist = null;
        Integer pagesize= (Integer) request.getSession().getAttribute("pagesize");
        limit=limit*20;
        try{
            merlist=jdbcTemplatel.queryForList("SELECT TOP 20 * FROM TMe_MerchandiseInfo WHERE TMe_MerchandiseInfo.ID NOT IN (SELECT TOP "+limit+" TMe_MerchandiseInfo.ID FROM TMe_MerchandiseInfo)");
        }catch (Exception e){
            e.printStackTrace();
        }
        request.getSession().removeAttribute("merlist");
        request.getSession(true).setAttribute("merlist",merlist);
        request.getSession().removeAttribute("limit");
        request.getSession().setAttribute("limit",limit/20+1);
        return "index";
    }

    @RequestMapping("/logout")
    public String logout(HttpServletRequest request){
        request.getSession().removeAttribute("memberlist");
        return "index";
    }

    public boolean isSuccess() {
        return success;
    }

    public void setSuccess(boolean success) {
        this.success = success;
    }
}