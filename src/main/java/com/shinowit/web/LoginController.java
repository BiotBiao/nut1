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

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2014/12/25.
 */
@Controller
@RequestMapping("/index")
public class LoginController {
    @Resource
    private TbaMemberinfoMapper member;

    @Resource
    private JdbcTemplate jdbcTemplate;

    @Resource
    private TmeMerchandisecinfoMapper merc;

    @Resource
    private TmeMerchandiseinfoMapper mer;

    @RequestMapping("/login")
    public String goodmessage(String username,String pwd,HttpServletRequest request){


        List<TbaMemberinfo> memberlist=null;
        List<Map<String, Object>> merlist;
        List<TmeMerchandisecinfo> list;
        List<TmeMerchandiseinfo> merchandiselist;
        boolean b=false;
        TbaMemberinfoCriteria mem=new TbaMemberinfoCriteria();
        mem.createCriteria().andUsernameEqualTo(username);
        mem.createCriteria().andPwdEqualTo(pwd);
//        memberlist=member.selectByExample(mem);

        request.getSession().setAttribute("pagesize",20);
        request.getSession().setAttribute("limit",1);
        try {
            memberlist=member.selectByExample(mem);
            merlist =jdbcTemplate.queryForList("select top 20 * from TMe_MerchandiseInfo");
            list=merc.selectBylist();

            request.getSession(true).setAttribute("merlist",merlist);

            request.getSession(true).setAttribute("merchandisec_list",list);
            merchandiselist=mer.selectmerchandise();

            request.getSession(true).setAttribute("merchandise",merchandiselist);
//            memberlist=member.selectMemberWithUserNameandUserPass(username,pwd);
        }catch (Exception e){
            e.printStackTrace();
        }

        if(memberlist==null){
            return "login";
        }else {
            b=memberlist.get(0).getStatus();
        }

        if(b==false){
            return "login";
        }else {
            request.getSession().setAttribute("memberlist",memberlist);

            return "index";
        }


    }

}