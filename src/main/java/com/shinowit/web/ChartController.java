package com.shinowit.web;

import com.shinowit.dao.mapper.TmeMerchandiseinfoMapper;
import com.shinowit.model.TmeMerchandiseinfo;
import com.shinowit.model.chartinfo;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;


/**
 * Created by Administrator on 2014/12/25.
 */
@Controller
@RequestMapping("/chart")
public class ChartController {


        List<chartinfo> chartinfoList = new ArrayList<chartinfo>();

    private boolean success;
    @Resource
    private TmeMerchandiseinfoMapper mer;
    @RequestMapping("/chart")
    public ModelAndView Chart(@RequestParam("merchandiseid")String merchandiseid){
        ModelAndView modelAndView=new ModelAndView();
        TmeMerchandiseinfo merchandiselist=new TmeMerchandiseinfo();
        try{

            merchandiselist= mer.selectByPrimaryKey(merchandiseid);

        }catch (Exception e){
            e.printStackTrace();
        }
        modelAndView.setViewName("inner-page");
        modelAndView.addObject("inner_merchandiselist",merchandiselist);
        return modelAndView;
    }

    @RequestMapping("/addchart")
    public String AddChart(@RequestParam("merchandiseid")String merchandiseid,HttpServletRequest request){

        TmeMerchandiseinfo merchandiseinfolist=new TmeMerchandiseinfo();
        int m=-1,n=-1;
        chartinfo chart=new chartinfo();
        List<chartinfo> chartlist= (List<chartinfo>) request.getSession().getAttribute("charlist");
        try{
            merchandiseinfolist=mer.selectByPrimaryKey(merchandiseid);
        }catch (Exception e){
            e.printStackTrace();
        }
        if(chartlist!=null) {
            for (chartinfo lll : chartlist) {
                m++;
                if (lll.getId().equals(merchandiseinfolist.getId())) {
                    n = m;
                }
            }
        }
        chart.setId(merchandiseinfolist.getId());
        chart.setMerchandiseid(merchandiseid);
        chart.setMerchandisename(merchandiseinfolist.getMerchandisename());
        chart.setNum(1);
        chart.setPrice(merchandiseinfolist.getPrice());
        chart.setRemark(merchandiseinfolist.getRemark());
        chart.setSpec(merchandiseinfolist.getSpec());
        chart.setName(merchandiseinfolist.getName());

        if(n>=0){

            int num=chartinfoList.get(n).getNum();

            chartinfoList.get(n).setNum(num+1);

        }else {
            chartinfoList.add(chart);
        }

        request.getSession().setAttribute("charlist",chartinfoList);
        setSuccess(true);
        return "inner-page";
    }

    @RequestMapping("/showchart")
    public String ShowChart(HttpServletRequest request){
        request.getSession().getAttribute("charlist");
        return "chart";
    }

    @RequestMapping("/clearchart")
    public String logout(HttpServletRequest request){
        request.getSession().removeAttribute("charlist");
        return "chart";
    }

    @RequestMapping("/deletechart")
    public String deletechart(@RequestParam("merchandiseid") String merchandiseid,HttpServletRequest request){
        int i=-1,n =-1;
        for(chartinfo cha:chartinfoList){

            if (cha.getMerchandiseid().equals(merchandiseid)){
                n=i;
            }
            i++;
        }
        if (n>=0){
            chartinfoList.remove(n);
        }

        return "chart";
    }

    public boolean isSuccess() {
        return success;
    }

    public void setSuccess(boolean success) {
        this.success = success;
    }
}