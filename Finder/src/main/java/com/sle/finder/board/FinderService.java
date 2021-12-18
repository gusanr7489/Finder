package com.sle.finder.board;

import java.util.List;

import org.springframework.stereotype.Service;
@Service
public interface FinderService {
	public int insertFinder(FinderVO vo);
	public int deleteFinder(int id);
	public int updateFinder(FinderVO vo);
	public FinderVO getFinder(int id);
	public List<FinderVO> getFinderList();
}
