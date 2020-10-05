package com.biz.iolist.service;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.biz.iolist.mapper.IoDao;
import com.biz.iolist.model.IoVO;

@Service
@Qualifier("IService")
public class IoServiceImplV1 implements IoService {
	
	@Autowired
	private IoDao iDao;

	@Override
	public List<IoVO> selectAll() {
		return iDao.selectAll();

	}

	@Override
	public IoVO findById(Long id) {
		return iDao.findById(id);
	}

	@Override
	public int insert(IoVO vo) {
		LocalDateTime dateTime = LocalDateTime.now();
		String Date = DateTimeFormatter.ofPattern("yyyy-MM-dd").format(dateTime);
		String Time = DateTimeFormatter.ofPattern("HH:mm:SS").format(dateTime);
		
		vo.setIo_date(Date);
		vo.setIo_time(Time);
		vo.setIo_total(vo.getIo_price() * vo.getIo_quan());
		
		int ret = iDao.insert(vo);
		return ret;

	}

	@Override
	public int update(IoVO vo) {
		vo.setIo_total(vo.getIo_price() * vo.getIo_quan());
		int ret = iDao.update(vo);
		return ret;

	}

	@Override
	public int delete(Long id) {
		int ret = iDao.delete(id);
		
		return ret;		

	}
	
	
	
	

}
