package com.user.home;

public class Make {
	private Integer yid;
	private String sdate;
	private String saddress;
	private String phone;
	private String remark;
	private Integer hid;
	public Make() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Make [yid=" + yid + ", sdate=" + sdate + ", saddress=" + saddress + ", phone=" + phone + ", remark="
				+ remark + ", hid=" + hid + "]";
	}
	public Make(Integer yid, String sdate, String saddress, String phone, String remark, Integer hid) {
		super();
		this.yid = yid;
		this.sdate = sdate;
		this.saddress = saddress;
		this.phone = phone;
		this.remark = remark;
		this.hid = hid;
	}
	public Integer getYid() {
		return yid;
	}
	public void setYid(Integer yid) {
		this.yid = yid;
	}
	public String getSdate() {
		return sdate;
	}
	public void setSdate(String sdate) {
		this.sdate = sdate;
	}
	public String getSaddress() {
		return saddress;
	}
	public void setSaddress(String saddress) {
		this.saddress = saddress;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	public Integer getHid() {
		return hid;
	}
	public void setHid(Integer hid) {
		this.hid = hid;
	}
	
	

}
