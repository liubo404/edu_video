package com.inxedu.os.edu.service.course;

import java.util.List;

import org.springframework.common.entity.PageEntity;

import com.inxedu.os.edu.entity.course.CourseStudyhistory;
/**
 * CourseStudyhistory管理接口
 *
 */
public interface CourseStudyhistoryService {

    /**
     * 添加CourseStudyhistory
     * @param courseStudyhistory 要添加的CourseStudyhistory
     * @return id
     */
    public java.lang.Long addCourseStudyhistory(CourseStudyhistory courseStudyhistory);
    /**
     * 添加播放记录和播放次数
     */
    public void playertimes(CourseStudyhistory courseStudyhistory);
    /**
     * @param courseStudyhistory
     * @param page
     * @return
     */
    public List<CourseStudyhistory> getCourseStudyhistoryListByCondition(CourseStudyhistory courseStudyhistory,PageEntity page);
    /**
     * 根据id删除一个CourseStudyhistory
     * @param id 要删除的id
     */
    public void deleteCourseStudyhistoryById(Long id);

    /**
     * 修改CourseStudyhistory
     * @param courseStudyhistory 要修改的CourseStudyhistory
     */
    public void updateCourseStudyhistory(CourseStudyhistory courseStudyhistory);

    /**
     * 根据id获取单个CourseStudyhistory对象
     * @param id 要查询的id
     * @return CourseStudyhistory
     */
    public CourseStudyhistory getCourseStudyhistoryById(Long id);

    /**
     * 根据条件获取CourseStudyhistory列表
     * @param courseStudyhistory 查询条件
     * @return List<CourseStudyhistory>
     */
    public List<CourseStudyhistory> getCourseStudyhistoryList(CourseStudyhistory courseStudyhistory);
    /**
     * 根据ids删除CourseStudyhistory
     * @param id 要删除的id
     */
	public void delCourseStudyhistory(String ids);
	
	/**
	 * 查看 课程下的 所有的学习记录
	 */
	public List<CourseStudyhistory> getCourseStudyhistoryListByCouId(Long courseId);
	
	/**
	 * 查看 课程下的学习记录 总人数
	 */
	public int getCourseStudyhistoryCountByCouId(Long courseId);
}