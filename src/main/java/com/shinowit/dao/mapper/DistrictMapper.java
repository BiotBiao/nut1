package com.shinowit.dao.mapper;

import com.shinowit.model.District;
import com.shinowit.model.DistrictCriteria;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface DistrictMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table district
     *
     * @mbggenerated Mon Jan 12 16:37:12 CST 2015
     */
    int countByExample(DistrictCriteria example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table district
     *
     * @mbggenerated Mon Jan 12 16:37:12 CST 2015
     */
    int deleteByExample(DistrictCriteria example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table district
     *
     * @mbggenerated Mon Jan 12 16:37:12 CST 2015
     */
    int insert(District record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table district
     *
     * @mbggenerated Mon Jan 12 16:37:12 CST 2015
     */
    int insertSelective(District record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table district
     *
     * @mbggenerated Mon Jan 12 16:37:12 CST 2015
     */
    List<District> selectByExample(DistrictCriteria example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table district
     *
     * @mbggenerated Mon Jan 12 16:37:12 CST 2015
     */
    int updateByExampleSelective(@Param("record") District record, @Param("example") DistrictCriteria example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table district
     *
     * @mbggenerated Mon Jan 12 16:37:12 CST 2015
     */
    int updateByExample(@Param("record") District record, @Param("example") DistrictCriteria example);
}