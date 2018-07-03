package com.question.model;

import java.util.List;

import com.question.dto.ExamDto;

public interface ExamDao {

	String nameSpace = "com.question.examDB.";
	
	public int insert(ExamDto dto);
	public List<ExamDto> selectAll();
}
