package com.question.model;

import java.util.List;

import com.question.dto.ExamDto;

public interface ExamBiz {
	
	public int insert(ExamDto dto);
	public List<ExamDto> selectAll();
}
