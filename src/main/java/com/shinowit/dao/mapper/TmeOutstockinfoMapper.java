package com.shinowit.dao.mapper;

import com.shinowit.model.TmeOutstockinfo;
import com.shinowit.model.TmeOutstockinfoCriteria;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TmeOutstockinfoMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table TMe_OutStockInfo
     *
     * @mbggenerated Thu Dec 25 18:54:52 CST 2014
     */
    int countByExample(TmeOutstockinfoCriteria example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table TMe_OutStockInfo
     *
     * @mbggenerated Thu Dec 25 18:54:52 CST 2014
     */
    int deleteByExample(TmeOutstockinfoCriteria example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table TMe_OutStockInfo
     *
     * @mbggenerated Thu Dec 25 18:54:52 CST 2014
     */
    int deleteByPrimaryKey(String outbillcode);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table TMe_OutStockInfo
     *
     * @mbggenerated Thu Dec 25 18:54:52 CST 2014
     */
    int insert(TmeOutstockinfo record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table TMe_OutStockInfo
     *
     * @mbggenerated Thu Dec 25 18:54:52 CST 2014
     */
    int insertSelective(TmeOutstockinfo record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table TMe_OutStockInfo
     *
     * @mbggenerated Thu Dec 25 18:54:52 CST 2014
     */
    List<TmeOutstockinfo> selectByExample(TmeOutstockinfoCriteria example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table TMe_OutStockInfo
     *
     * @mbggenerated Thu Dec 25 18:54:52 CST 2014
     */
    TmeOutstockinfo selectByPrimaryKey(String outbillcode);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table TMe_OutStockInfo
     *
     * @mbggenerated Thu Dec 25 18:54:52 CST 2014
     */
    int updateByExampleSelective(@Param("record") TmeOutstockinfo record, @Param("example") TmeOutstockinfoCriteria example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table TMe_OutStockInfo
     *
     * @mbggenerated Thu Dec 25 18:54:52 CST 2014
     */
    int updateByExample(@Param("record") TmeOutstockinfo record, @Param("example") TmeOutstockinfoCriteria example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table TMe_OutStockInfo
     *
     * @mbggenerated Thu Dec 25 18:54:52 CST 2014
     */
    int updateByPrimaryKeySelective(TmeOutstockinfo record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table TMe_OutStockInfo
     *
     * @mbggenerated Thu Dec 25 18:54:52 CST 2014
     */
    int updateByPrimaryKey(TmeOutstockinfo record);
}