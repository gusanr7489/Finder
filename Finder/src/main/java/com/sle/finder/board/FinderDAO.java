package com.sle.finder.board;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class FinderDAO {
	
	@Autowired
	SqlSession sqlSession;
	
	public int insertFinder(FinderVO vo) {
		int result = sqlSession.insert("Finder.insertFinder",vo);
		return result;
	}
	public int updateFinder(FinderVO vo) {
		int result = sqlSession.update("Finder.updateFinder", vo);
		return result;
	}
	public int deleteFinder(int id) {
		int result = sqlSession.delete("Finder.deleteFinder", id);
		return result;
	}
	public FinderVO getFinder(int id) {
		FinderVO vo = sqlSession.selectOne("Finder.getFinder", id);
		return vo;
	}
	
	public List<FinderVO> getFinderList(){
		List<FinderVO> list = sqlSession.selectList("Finder.getFinderList");
		return list;
	}
}
