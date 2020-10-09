package com.biz.iolist.controller;




import java.util.List;


import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.biz.iolist.model.IoVO;
import com.biz.iolist.service.IoService;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequiredArgsConstructor
public class IoController {
	
	
	
	@Qualifier("iService")
	private final IoService iService;
	
	
	@Transactional
	@RequestMapping(value="/",method=RequestMethod.GET)
	public String home(Model model) {
		
		List<IoVO> ioList = iService.selectAll();
		model.addAttribute("IOLIST",ioList);
		model.addAttribute("BODY","IO-LIST");
		return "home";
	}
	@RequestMapping(value = "/write", method = RequestMethod.GET)
	public String write(@ModelAttribute("IOVO") IoVO ioVO, Model model) {

		model.addAttribute("IOVO", ioVO);
		model.addAttribute("BODY", "IO-WRITE");
		return "home";
	}

	@RequestMapping(value = "/write", method = RequestMethod.POST)
	public String write(@ModelAttribute("IOVO") IoVO ioVO) {

		iService.insert(ioVO);
		return "redirect:/";
	}

	@RequestMapping(value = "/detail/{id}", method = RequestMethod.GET)
	public String detail(@PathVariable("id") Long seq, Model model) {

		IoVO ioVO = iService.findById(seq);
		model.addAttribute("IOVO", ioVO);
		model.addAttribute("BODY", "IO-DETAIL");

		return "home";
	}

	@RequestMapping(value = "/delete", method = RequestMethod.GET)
	public String delete(@RequestParam("id") Long seq, Model model) {

		iService.delete(seq);
		return "redirect:/";
	}

	@RequestMapping(value = "/update", method = RequestMethod.GET)
	public String update(@RequestParam("id") Long seq, @ModelAttribute("IOVO") IoVO ioVO, Model model) {

		ioVO = iService.findById(seq);
		model.addAttribute("IOVO", ioVO);
		model.addAttribute("BODY", "IO-WRITE");
		return "home";
	}

	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String update(@ModelAttribute("IOVO") IoVO ioVO, Model model) {

		iService.update(ioVO);

		return "redirect:/";
	}
	
	

}
