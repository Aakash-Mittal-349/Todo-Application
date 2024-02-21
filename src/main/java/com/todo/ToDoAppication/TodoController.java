package com.todo.ToDoAppication;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class TodoController {

    @Autowired
    TodoRepo tr;

    @RequestMapping("/home")
    public String home() {
        return "login";
    }

    @RequestMapping("/welcome")
    public String welcome() {
        return "welcome";
    }

    @RequestMapping("/logout")
    public String logout() {
        return "logout";
    }
    
    @RequestMapping("/addtodo")
    public String addtodo() {
        return "addtodo";
    }

    @RequestMapping("/registertodo")
    public String registerTodo(Todos td, ModelMap model) {
        tr.save(td);
        
        // Fetch the updated list of todos
        List<Todos> todosList = (List<Todos>) tr.findAll();
        
        // Add the list to the model
        model.addAttribute("obj", todosList);

        return "redirect:/todos"; 
    }
    
    

    @RequestMapping("/todos")
    public ModelAndView todos(ModelMap mp) {
    	ModelAndView mv = new ModelAndView();

        mp.put("obj", tr.findAll());
        mv.addAllObjects(mp);
        mv.setViewName("todos");
        return mv;
    }


    @RequestMapping("/login")
    public String login(String username, String password) {
        String result;
        if (username.equals(password)) {
            result = "redirect:/welcome";
        } else {
            result = "login";
        }
        return result;
    }
        
    @RequestMapping("/editTodo")
    public String updatetodo(Todos t, ModelMap model) {
        tr.save(t);
        
        List<Todos> todosList = (List<Todos>) tr.findAll();

        model.addAttribute("obj", todosList);

        return "redirect:/todos";
    }
    
    @RequestMapping("/edittodo")
	public ModelAndView edittodo(int id) {
		Todos td = tr.findById(id).get();
		ModelAndView mv = new ModelAndView();
		mv.addObject("obj", td);
		mv.setViewName("edittodo");

		return mv;
	}

    @RequestMapping("/deleteTodo/{id}")
    public String deleteTodo(@PathVariable Integer id) {
        tr.deleteById(id);
        return "redirect:/todos";
    }
}