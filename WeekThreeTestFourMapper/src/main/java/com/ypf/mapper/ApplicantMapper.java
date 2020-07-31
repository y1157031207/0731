package com.ypf.mapper;

import java.util.List;
import java.util.Map;

import com.ypf.beans.Applicant;
import com.ypf.beans.Job;
import com.ypf.beans.Score;

public interface ApplicantMapper {

	List<Applicant> queryApplicant(Map<String, Object> map);
	
	List<Job> queryJob();
	
	void addApplicant(Applicant applicant);
	
	Applicant queryApplicantByAid(Integer aid);
	
	void updateApplicant(Applicant applicant);
	
	void addScore(Score score);
}
