package com.application.job.pgs.MaltMagazine.controllers;

import com.application.job.pgs.MaltMagazine.models.AppUsersRepo;
import com.application.job.pgs.MaltMagazine.models.MaltModel;
import com.application.job.pgs.MaltMagazine.models.MaltModelRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MainController {

    @Autowired
    AppUsersRepo appRepo;

    @Autowired
    MaltModelRepo maltModelRepo;

    @RequestMapping("/")
    public ModelAndView doHome(){
        ModelAndView mv = new ModelAndView("index");
        mv.addObject("lists", maltModelRepo.findAll());
        return mv;
    }

    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public ModelAndView doSave(@RequestParam("id") String id,
                               @RequestParam("name") String name,
                               @RequestParam("description") String description,
                               @RequestParam("amount") Double amount){

        ModelAndView mv = new ModelAndView("redirect:/");
        MaltModel maltModel;
        if(!id.isEmpty()) {
            maltModel = (MaltModel) maltModelRepo.findOne(Integer.parseInt(id));
        }
        else {
            maltModel = new MaltModel();
        }
        maltModel.setName(name);
        maltModel.setDescription(description);
        maltModel.setAmount(amount);
        maltModelRepo.save(maltModel);
        return mv;
    }

    @RequestMapping(value = "/view/{id}", method = RequestMethod.GET)
    public ModelAndView doView(@PathVariable("id") int id){
        ModelAndView mv = new ModelAndView("view");
        mv.addObject("lists", maltModelRepo.findOne(id));
        return mv;
    }

    @RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
    public ModelAndView doDelete(@PathVariable("id") int id){
        ModelAndView mv = new ModelAndView("redirect:/");
        maltModelRepo.delete(id);
        return mv;
    }

    @RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
    public ModelAndView doEdit(@PathVariable("id") int id){
        ModelAndView mv = new ModelAndView("edit");
        mv.addObject("lists", maltModelRepo.findOne(id));
        return mv;
    }
}
