package com.sle.finder;

import java.util.List;

public interface FinderService {
	public int insertFinder(FinderVO vo);
	public int deleteFinder(int id);
	public int updateFinder(FinderVO vo);
	public FinderVO getFinder(int id);
	public List<FinderVO> getFinderList();
}
