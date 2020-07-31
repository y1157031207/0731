package com.ypf.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ypf.beans.Applicant;
import com.ypf.beans.Job;
import com.ypf.beans.Score;
import com.ypf.mapper.ApplicantMapper;

@Service
public class ApplicantServiceImpl implements ApplicantService {

	@Resource
	private ApplicantMapper mapper;
	
	public List<Applicant> queryApplicant(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return mapper.queryApplicant(map);
	}

	public List<Job> queryJob() {
		// TODO Auto-generated method stub
		return mapper.queryJob();
	}

	public void addApplicant(Applicant applicant) {
		// TODO Auto-generated method stub
		mapper.addApplicant(applicant);
	}

	public Applicant queryApplicantByAid(Integer aid) {
		// TODO Auto-generated method stub
		return mapper.queryApplicantByAid(aid);
	}

	public void updateApplicant(Applicant applicant) {
		// TODO Auto-generated method stub
		mapper.updateApplicant(applicant);
	}

	public void addScore(Score score) {
		// TODO Auto-generated method stub
		mapper.addScore(score);
	}

}
