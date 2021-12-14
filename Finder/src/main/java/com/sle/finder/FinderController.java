package com.sle.finder;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller 
public class FinderController {
	@Autowired
	FinderService finderService;
	
	@RequestMapping(value = "/finder/list", method = RequestMethod.GET)
	public String finderList(Model model) {
		model.addAttribute("list", finderService.getFinderList());
		return "posts";
	}
	
	@RequestMapping(value= "/finder/add", method = RequestMethod.GET)
	public String addPost() {
		return "addpostform";
	}
	@RequestMapping(value = "/addok", method = RequestMethod.POST)
	public String addPostOk(FinderVO vo) {
		if(finderService.insertFinder(vo) == 0)
			System.out.println("데이터 추가 실패");
		else
			System.out.println("데이터 추가 성공!");
		
		return "redirect:list";
	}
	
	@RequestMapping(value = "/editform/{id}", method = RequestMethod.GET)
	public String editPost(@PathVariable("id") int id, Model model) {
		FinderVO finderVO = finderService.getFinder(id);
		model.addAttribute("finderVO", finderVO);
		return "editform";
	}
	
	@RequestMapping(value = "/editok", method = RequestMethod.POST)
	public String editPostOk(FinderVO vo) {
		int i = finderService.updateFinder(vo); 
		if(i==0)
			System.out.println("데이터 수정 실패");
		else
			System.out.println("데이터 수정 성공!");
		
		return "redirect:list";
	}
	
	@RequestMapping(value = "/deleteok/{id}", method = RequestMethod.GET)
	public String deletePost(@PathVariable("id") int id) {
		int i = finderService.deleteFinder(id);
		if(i==0)
			System.out.println("데이터 삭제 실패");
		else
			System.out.println("삭제 되었습니다.");
		
		return "redirect:../list";
	}
}
