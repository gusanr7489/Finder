package com.sle.finder.board;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class FinderServiceImpl implements FinderService {
	@Autowired
	FinderDAO finderDAO;
	
	@Override
	public int insertFinder(FinderVO vo) {
		return finderDAO.insertFinder(vo);
	}

	@Override
	public int deleteFinder(int id) {
		return finderDAO.deleteFinder(id);
	}

	@Override
	public int updateFinder(FinderVO vo) {
		return finderDAO.updateFinder(vo);
	}

	@Override
	public FinderVO getFinder(int id) {
		return finderDAO.getFinder(id);
	}

	@Override
	public List<FinderVO> getFinderList() {
		List<FinderVO> list = finderDAO.getFinderList();
		return list;
	}
}
