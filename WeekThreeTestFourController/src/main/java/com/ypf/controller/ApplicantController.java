package com.ypf.controller;

import java.text.ParseException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.ypf.beans.Applicant;
import com.ypf.beans.Job;
import com.ypf.beans.Score;
import com.ypf.service.ApplicantService;
import com.ypf.utils.DateUtil;

@Controller
public class ApplicantController {

	@Resource
	private ApplicantService ser;
	
	@RequestMapping("queryApplicant")
	public String queryApplicant(@RequestParam(defaultValue="1")Integer pageNum,Model model,
			String aname,String startBirthday,String endBirthday) throws ParseException{
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("aname", aname);
		map.put("startBirthday", startBirthday);
		map.put("endBirthday", endBirthday);
		PageHelper.startPage(pageNum, 3);
		List<Applicant> list = ser.queryApplicant(map);
		//将出生日期转换成年龄
		for (Applicant applicant : list) {
			applicant.setAge(DateUtil.getAge(applicant.getBirthday()));
		}
		PageInfo<Applicant> page = new PageInfo<Applicant>(list);
		model.addAttribute("page", page);
		return "list";
	}
	
	@RequestMapping("queryJob")
	@ResponseBody
	public List<Job> queryJob(){
		List<Job> list = ser.queryJob();
		return list;
	}
	
	@RequestMapping("addApplicant")
	@ResponseBody
	public boolean addApplicant(Applicant applicant){
		try {
			ser.addApplicant(applicant);
			return true;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return false;
		}
	}
	
	@RequestMapping("queryApplicantByAid")
	public String queryApplicantByAid(Integer aid,Model model){
		Applicant applicant = ser.queryApplicantByAid(aid);
		model.addAttribute("applicant", applicant);
		return "updateapplicant";
	}
	
	@RequestMapping("updateApplicant")
	@ResponseBody
	public boolean updateApplicant(Applicant applicant){
		try {
			ser.updateApplicant(applicant);
			return true;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return false;
		}
	}
	
	@RequestMapping("addScore")
	@ResponseBody
	public boolean addScore(Score score){
		try {
			ser.addScore(score);
			return true;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return false;
		}
	}
}
