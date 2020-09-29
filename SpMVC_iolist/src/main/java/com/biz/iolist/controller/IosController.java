package com.biz.iolist.controller;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import com.biz.iolist.mapper.IoDao;
import com.biz.iolist.model.IoVO;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping(value="/iolist")
public class IosController {
	
	@Autowired
	private IoDao ioDao;
	
	
	@Transactional
	@RequestMapping(value="/",method=RequestMethod.GET)
	public String list(Model model) {
		
		List<IoVO> ioList = ioDao.selectAll();
		model.addAttribute("IOLIST","iolist");
		model.addAttribute("BODY","IOLIST");
		return "home";
	}
	
	@RequestMapping(value="/input",method=RequestMethod.GET)
	public String input(Model model) {
		
		LocalDate localDate = LocalDate.now();
		String todayString = DateTimeFormatter.ofPattern("yyyy-MM-dd").format(localDate);
		String timeString = DateTimeFormatter.ofPattern("HH:mm:SS").format(localDate);
		
		IoVO ioVO = IoVO.builder()
						.io_date(todayString)
						.io_time(timeString)
						.build();
		model.addAttribute("BODY","IOLIST-WRITE");
		model.addAttribute("ioVO", ioVO);		
		return"home";
	}
	@RequestMapping(value="/input",method=RequestMethod.POST)
	public String input(@ModelAttribute("ioVO")IoVO ioVO) {
		log.debug(ioVO.toString());
		
		
		return "redirect:/iolist";
		
	}

}
