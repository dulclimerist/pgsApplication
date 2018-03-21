package com.application.job.pgs.MaltMagazine.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MainController {
    @RequestMapping("/")
    public ModelAndView doHome(){
        ModelAndView mv = new ModelAndView("index");
        return mv;
    }
}
