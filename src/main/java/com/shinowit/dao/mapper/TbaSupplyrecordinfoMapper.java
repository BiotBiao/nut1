package com.shinowit.dao.mapper;

import com.shinowit.model.TbaSupplyrecordinfo;
import com.shinowit.model.TbaSupplyrecordinfoCriteria;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TbaSupplyrecordinfoMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table TBa_SupplyRecordInfo
     *
     * @mbggenerated Thu Dec 25 18:54:52 CST 2014
     */
    int countByExample(TbaSupplyrecordinfoCriteria example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table TBa_SupplyRecordInfo
     *
     * @mbggenerated Thu Dec 25 18:54:52 CST 2014
     */
    int deleteByExample(TbaSupplyrecordinfoCriteria example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table TBa_SupplyRecordInfo
     *
     * @mbggenerated Thu Dec 25 18:54:52 CST 2014
     */
    int deleteByPrimaryKey(Long id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table TBa_SupplyRecordInfo
     *
     * @mbggenerated Thu Dec 25 18:54:52 CST 2014
     */
    int insert(TbaSupplyrecordinfo record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table TBa_SupplyRecordInfo
     *
     * @mbggenerated Thu Dec 25 18:54:52 CST 2014
     */
    int insertSelective(TbaSupplyrecordinfo record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table TBa_SupplyRecordInfo
     *
     * @mbggenerated Thu Dec 25 18:54:52 CST 2014
     */
    List<TbaSupplyrecordinfo> selectByExample(TbaSupplyrecordinfoCriteria example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table TBa_SupplyRecordInfo
     *
     * @mbggenerated Thu Dec 25 18:54:52 CST 2014
     */
    TbaSupplyrecordinfo selectByPrimaryKey(Long id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table TBa_SupplyRecordInfo
     *
     * @mbggenerated Thu Dec 25 18:54:52 CST 2014
     */
    int updateByExampleSelective(@Param("record") TbaSupplyrecordinfo record, @Param("example") TbaSupplyrecordinfoCriteria example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table TBa_SupplyRecordInfo
     *
     * @mbggenerated Thu Dec 25 18:54:52 CST 2014
     */
    int updateByExample(@Param("record") TbaSupplyrecordinfo record, @Param("example") TbaSupplyrecordinfoCriteria example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table TBa_SupplyRecordInfo
     *
     * @mbggenerated Thu Dec 25 18:54:52 CST 2014
     */
    int updateByPrimaryKeySelective(TbaSupplyrecordinfo record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table TBa_SupplyRecordInfo
     *
     * @mbggenerated Thu Dec 25 18:54:52 CST 2014
     */
    int updateByPrimaryKey(TbaSupplyrecordinfo record);
}