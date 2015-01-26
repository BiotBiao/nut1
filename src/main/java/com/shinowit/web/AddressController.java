package com.shinowit.web;

import com.shinowit.model.TmeOrderinfo;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;


/**
 * Created by Administrator on 2014/12/25.
 */
@Controller
@RequestMapping("/address")
public class AddressController {

    List<Map<String, Object>> list=null;

    @Resource
    private JdbcTemplate jdbcTemplate;

    @RequestMapping("/display")
    public String display(@ModelAttribute("order")TmeOrderinfo order ,Model model){
        //显示省级菜单的集合
        try{
            list = jdbcTemplate.queryForList("select * from province ");

            model.addAttribute("province",list);

        }catch(Exception e){
            e.printStackTrace();
        }
        return "chart01";
    }

    @RequestMapping("/city")
    @ResponseBody
    public List<Map<String,Object>> city(@RequestParam("provinceid") String provinceid,Model model){
        List<Map<String,Object>>  shiList=jdbcTemplate.queryForList("select * from city where provinceid= "+ provinceid);

        return shiList;
    }

    @RequestMapping("/district")
    @ResponseBody
    public List<Map<String,Object>> district(@RequestParam("cityid") String cityid,Model model){
        List<Map<String,Object>>  districtList=jdbcTemplate.queryForList("select * from district where cityId= "+ cityid);

        return districtList;
    }

}