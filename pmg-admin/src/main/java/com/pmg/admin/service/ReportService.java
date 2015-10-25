package com.pmg.admin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pmg.admin.dao.ReportDao;
import com.pmg.admin.model.Report;

@Service
public class ReportService {
	@Autowired
	private ReportDao reportDao;

	public void setReportDao(ReportDao reportDao) {
		this.reportDao = reportDao;
	}

	public void createReport(Report report) {
		reportDao.add(report);
	}

	public List<Report> findOpenReports() {
		return reportDao.findOpenReports();
	}

	public List<Report> findClosedReports() {
		return reportDao.findClosedReports();
	}

	public long countClosedReports() {
		return reportDao.countClosedReports();
	}

	public long countOpenReports() {
		return reportDao.countOpenReports();
	}
}
