package com.biz.iolist.service;

import java.util.List;

public interface IoService<VO, PK> {
	
	public List<VO> selectAll();
	public VO findById(PK id);
	public int insert(VO vo);
	public int udpate(VO vo);
	public int delete(VO vo);

}
