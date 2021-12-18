package com.sle.finder.board;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

@Controller 
@RequestMapping(value="/board")
public class FinderController {
	@Autowired
	FinderService finderService;
	
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String finderList(Model model) {
		model.addAttribute("list", finderService.getFinderList());
		return "list";
	}
	
	@RequestMapping(value= "/add", method = RequestMethod.GET)
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
	
	/*
	@RequestMapping(value = "/show/{id}", method = RequestMethod.GET) 
	public String findList(Model mo) {
		mo.addAttribute("list", finderService.getFinderList());
		return "show";
		
	}
	*/
	@RequestMapping(value = "/post", method = RequestMethod.GET)
	public String home(Model model) {
		return "post";
	}
	
	@RequestMapping(value = "/fileUpload", method = RequestMethod.POST)
	public String fileUpload(MultipartFile upload, HttpServletRequest request) {
		
		String saveDir = request.getSession().getServletContext().getRealPath("/resources/img");
		File dir = new File(saveDir);
		
        if(!dir.exists()) { //업로드 디렉토리가 존재하지 않으면 생성
            dir.mkdirs();
        }
        
        
        	
		// 기존 파일 이름을 받고 확장자 저장 
		String orifileName = upload.getOriginalFilename(); 
		String ext = orifileName.substring(orifileName.lastIndexOf(".")); 
		
		// 이름 값 변경을 위한 설정 
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd-HHmmssSSS"); 
		int rand = (int)(Math.random()*1000); 
		// 파일 이름 변경 
		String reName = sdf.format(System.currentTimeMillis()) + "_" + rand + ext; 
		// 파일 저장 
		try { 
			upload.transferTo(new File(saveDir + "/" + reName)); 
		}	catch (IOException e) {
			e.printStackTrace(); 
		} 
    		 
        return "list";
	}
}
