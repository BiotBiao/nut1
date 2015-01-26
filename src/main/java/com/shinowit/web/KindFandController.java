package com.shinowit.web;

import com.shinowit.dao.mapper.TmeMerchandisecinfoMapper;
import com.shinowit.model.TmeMerchandisecinfo;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created by Administrator on 2014/12/25.
 */
@Controller
@RequestMapping("/index")
public class KindFandController {

    @Resource
    private TmeMerchandisecinfoMapper merc;
    @RequestMapping("/merchandisec")
    public String merchandisec(HttpServletRequest request){

        List<TmeMerchandisecinfo> list=merc.selectBylist();

        request.getSession(true).setAttribute("merchandisec_list",list);

        return "jsp/index";
    }


}