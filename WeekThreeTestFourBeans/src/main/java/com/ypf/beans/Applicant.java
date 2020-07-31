package com.ypf.beans;

public class Applicant {

	private Integer aid;
	private String aname;
	private String gender;
	private String birthday;
	private String college;
	private String major;
	private Integer edu;
	private Integer degree;
	private String created;
	
	private Integer age;
	private String score;
	private Double avgscore;
	public Integer getAid() {
		return aid;
	}
	public void setAid(Integer aid) {
		this.aid = aid;
	}
	public String getAname() {
		return aname;
	}
	public void setAname(String aname) {
		this.aname = aname;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	public String getCollege() {
		return college;
	}
	public void setCollege(String college) {
		this.college = college;
	}
	public String getMajor() {
		return major;
	}
	public void setMajor(String major) {
		this.major = major;
	}
	public Integer getEdu() {
		return edu;
	}
	public void setEdu(Integer edu) {
		this.edu = edu;
	}
	public Integer getDegree() {
		return degree;
	}
	public void setDegree(Integer degree) {
		this.degree = degree;
	}
	public String getCreated() {
		return created;
	}
	public void setCreated(String created) {
		this.created = created;
	}
	public Integer getAge() {
		return age;
	}
	public void setAge(Integer age) {
		this.age = age;
	}
	public String getScore() {
		return score;
	}
	public void setScore(String score) {
		this.score = score;
	}
	public Double getAvgscore() {
		return avgscore;
	}
	public void setAvgscore(Double avgscore) {
		this.avgscore = avgscore;
	}
	public Applicant(Integer aid, String aname, String gender, String birthday, String college, String major,
			Integer edu, Integer degree, String created, String score, Double avgscore) {
		super();
		this.aid = aid;
		this.aname = aname;
		this.gender = gender;
		this.birthday = birthday;
		this.college = college;
		this.major = major;
		this.edu = edu;
		this.degree = degree;
		this.created = created;
		this.score = score;
		this.avgscore = avgscore;
	}
	public Applicant() {
		super();
	}
	@Override
	public String toString() {
		return "Applicant [aid=" + aid + ", aname=" + aname + ", gender=" + gender + ", birthday=" + birthday
				+ ", college=" + college + ", major=" + major + ", edu=" + edu + ", degree=" + degree + ", created="
				+ created + ", age=" + age + ", score=" + score + ", avgscore=" + avgscore + "]";
	}
	
}
