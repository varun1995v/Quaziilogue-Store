package com.serviceimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.QueriesDao;
import com.model.Queries;
import com.service.QueriesService;

@Service
public class QueriesServiceImpl implements QueriesService {

	@Autowired
	private QueriesDao queryDao;

	public void addQuery(Queries queries) {

		queryDao.addQuery(queries);
	}

}
