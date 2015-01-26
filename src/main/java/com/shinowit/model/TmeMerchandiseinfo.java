package com.shinowit.model;

import java.io.Serializable;
import java.math.BigDecimal;

public class TmeMerchandiseinfo implements Serializable {

    private String name;
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column TMe_MerchandiseInfo.MerchandiseID
     *
     * @mbggenerated Thu Dec 25 18:54:52 CST 2014
     */
    private String merchandiseid;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column TMe_MerchandiseInfo.ID
     *
     * @mbggenerated Thu Dec 25 18:54:52 CST 2014
     */
    private Integer id;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column TMe_MerchandiseInfo.UnitID
     *
     * @mbggenerated Thu Dec 25 18:54:52 CST 2014
     */
    private Long unitid;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column TMe_MerchandiseInfo.ProStatusID
     *
     * @mbggenerated Thu Dec 25 18:54:52 CST 2014
     */
    private Byte prostatusid;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column TMe_MerchandiseInfo.MerchandiseCID
     *
     * @mbggenerated Thu Dec 25 18:54:52 CST 2014
     */
    private String merchandisecid;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column TMe_MerchandiseInfo.MerchandiseName
     *
     * @mbggenerated Thu Dec 25 18:54:52 CST 2014
     */
    private String merchandisename;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column TMe_MerchandiseInfo.MerchandiseAB
     *
     * @mbggenerated Thu Dec 25 18:54:52 CST 2014
     */
    private String merchandiseab;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column TMe_MerchandiseInfo.Price
     *
     * @mbggenerated Thu Dec 25 18:54:52 CST 2014
     */
    private BigDecimal price;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column TMe_MerchandiseInfo.SaleStatus
     *
     * @mbggenerated Thu Dec 25 18:54:52 CST 2014
     */
    private Boolean salestatus;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column TMe_MerchandiseInfo.Spec
     *
     * @mbggenerated Thu Dec 25 18:54:52 CST 2014
     */
    private String spec;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column TMe_MerchandiseInfo.Describe
     *
     * @mbggenerated Thu Dec 25 18:54:52 CST 2014
     */
    private String describe;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column TMe_MerchandiseInfo.PicPath
     *
     * @mbggenerated Thu Dec 25 18:54:52 CST 2014
     */
    private String picpath;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column TMe_MerchandiseInfo.ClickCount
     *
     * @mbggenerated Thu Dec 25 18:54:52 CST 2014
     */
    private Integer clickcount;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column TMe_MerchandiseInfo.Remark
     *
     * @mbggenerated Thu Dec 25 18:54:52 CST 2014
     */
    private String remark;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table TMe_MerchandiseInfo
     *
     * @mbggenerated Thu Dec 25 18:54:52 CST 2014
     */
    private static final long serialVersionUID = 1L;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column TMe_MerchandiseInfo.MerchandiseID
     *
     * @return the value of TMe_MerchandiseInfo.MerchandiseID
     *
     * @mbggenerated Thu Dec 25 18:54:52 CST 2014
     */
    public String getMerchandiseid() {
        return merchandiseid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column TMe_MerchandiseInfo.MerchandiseID
     *
     * @param merchandiseid the value for TMe_MerchandiseInfo.MerchandiseID
     *
     * @mbggenerated Thu Dec 25 18:54:52 CST 2014
     */
    public void setMerchandiseid(String merchandiseid) {
        this.merchandiseid = merchandiseid == null ? null : merchandiseid.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column TMe_MerchandiseInfo.ID
     *
     * @return the value of TMe_MerchandiseInfo.ID
     *
     * @mbggenerated Thu Dec 25 18:54:52 CST 2014
     */
    public Integer getId() {
        return id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column TMe_MerchandiseInfo.ID
     *
     * @param id the value for TMe_MerchandiseInfo.ID
     *
     * @mbggenerated Thu Dec 25 18:54:52 CST 2014
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column TMe_MerchandiseInfo.UnitID
     *
     * @return the value of TMe_MerchandiseInfo.UnitID
     *
     * @mbggenerated Thu Dec 25 18:54:52 CST 2014
     */
    public Long getUnitid() {
        return unitid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column TMe_MerchandiseInfo.UnitID
     *
     * @param unitid the value for TMe_MerchandiseInfo.UnitID
     *
     * @mbggenerated Thu Dec 25 18:54:52 CST 2014
     */
    public void setUnitid(Long unitid) {
        this.unitid = unitid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column TMe_MerchandiseInfo.ProStatusID
     *
     * @return the value of TMe_MerchandiseInfo.ProStatusID
     *
     * @mbggenerated Thu Dec 25 18:54:52 CST 2014
     */
    public Byte getProstatusid() {
        return prostatusid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column TMe_MerchandiseInfo.ProStatusID
     *
     * @param prostatusid the value for TMe_MerchandiseInfo.ProStatusID
     *
     * @mbggenerated Thu Dec 25 18:54:52 CST 2014
     */
    public void setProstatusid(Byte prostatusid) {
        this.prostatusid = prostatusid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column TMe_MerchandiseInfo.MerchandiseCID
     *
     * @return the value of TMe_MerchandiseInfo.MerchandiseCID
     *
     * @mbggenerated Thu Dec 25 18:54:52 CST 2014
     */
    public String getMerchandisecid() {
        return merchandisecid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column TMe_MerchandiseInfo.MerchandiseCID
     *
     * @param merchandisecid the value for TMe_MerchandiseInfo.MerchandiseCID
     *
     * @mbggenerated Thu Dec 25 18:54:52 CST 2014
     */
    public void setMerchandisecid(String merchandisecid) {
        this.merchandisecid = merchandisecid == null ? null : merchandisecid.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column TMe_MerchandiseInfo.MerchandiseName
     *
     * @return the value of TMe_MerchandiseInfo.MerchandiseName
     *
     * @mbggenerated Thu Dec 25 18:54:52 CST 2014
     */
    public String getMerchandisename() {
        return merchandisename;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column TMe_MerchandiseInfo.MerchandiseName
     *
     * @param merchandisename the value for TMe_MerchandiseInfo.MerchandiseName
     *
     * @mbggenerated Thu Dec 25 18:54:52 CST 2014
     */
    public void setMerchandisename(String merchandisename) {
        this.merchandisename = merchandisename == null ? null : merchandisename.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column TMe_MerchandiseInfo.MerchandiseAB
     *
     * @return the value of TMe_MerchandiseInfo.MerchandiseAB
     *
     * @mbggenerated Thu Dec 25 18:54:52 CST 2014
     */
    public String getMerchandiseab() {
        return merchandiseab;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column TMe_MerchandiseInfo.MerchandiseAB
     *
     * @param merchandiseab the value for TMe_MerchandiseInfo.MerchandiseAB
     *
     * @mbggenerated Thu Dec 25 18:54:52 CST 2014
     */
    public void setMerchandiseab(String merchandiseab) {
        this.merchandiseab = merchandiseab == null ? null : merchandiseab.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column TMe_MerchandiseInfo.Price
     *
     * @return the value of TMe_MerchandiseInfo.Price
     *
     * @mbggenerated Thu Dec 25 18:54:52 CST 2014
     */
    public BigDecimal getPrice() {
        return price;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column TMe_MerchandiseInfo.Price
     *
     * @param price the value for TMe_MerchandiseInfo.Price
     *
     * @mbggenerated Thu Dec 25 18:54:52 CST 2014
     */
    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column TMe_MerchandiseInfo.SaleStatus
     *
     * @return the value of TMe_MerchandiseInfo.SaleStatus
     *
     * @mbggenerated Thu Dec 25 18:54:52 CST 2014
     */
    public Boolean getSalestatus() {
        return salestatus;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column TMe_MerchandiseInfo.SaleStatus
     *
     * @param salestatus the value for TMe_MerchandiseInfo.SaleStatus
     *
     * @mbggenerated Thu Dec 25 18:54:52 CST 2014
     */
    public void setSalestatus(Boolean salestatus) {
        this.salestatus = salestatus;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column TMe_MerchandiseInfo.Spec
     *
     * @return the value of TMe_MerchandiseInfo.Spec
     *
     * @mbggenerated Thu Dec 25 18:54:52 CST 2014
     */
    public String getSpec() {
        return spec;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column TMe_MerchandiseInfo.Spec
     *
     * @param spec the value for TMe_MerchandiseInfo.Spec
     *
     * @mbggenerated Thu Dec 25 18:54:52 CST 2014
     */
    public void setSpec(String spec) {
        this.spec = spec == null ? null : spec.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column TMe_MerchandiseInfo.Describe
     *
     * @return the value of TMe_MerchandiseInfo.Describe
     *
     * @mbggenerated Thu Dec 25 18:54:52 CST 2014
     */
    public String getDescribe() {
        return describe;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column TMe_MerchandiseInfo.Describe
     *
     * @param describe the value for TMe_MerchandiseInfo.Describe
     *
     * @mbggenerated Thu Dec 25 18:54:52 CST 2014
     */
    public void setDescribe(String describe) {
        this.describe = describe == null ? null : describe.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column TMe_MerchandiseInfo.PicPath
     *
     * @return the value of TMe_MerchandiseInfo.PicPath
     *
     * @mbggenerated Thu Dec 25 18:54:52 CST 2014
     */
    public String getPicpath() {
        return picpath;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column TMe_MerchandiseInfo.PicPath
     *
     * @param picpath the value for TMe_MerchandiseInfo.PicPath
     *
     * @mbggenerated Thu Dec 25 18:54:52 CST 2014
     */
    public void setPicpath(String picpath) {
        this.picpath = picpath == null ? null : picpath.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column TMe_MerchandiseInfo.ClickCount
     *
     * @return the value of TMe_MerchandiseInfo.ClickCount
     *
     * @mbggenerated Thu Dec 25 18:54:52 CST 2014
     */
    public Integer getClickcount() {
        return clickcount;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column TMe_MerchandiseInfo.ClickCount
     *
     * @param clickcount the value for TMe_MerchandiseInfo.ClickCount
     *
     * @mbggenerated Thu Dec 25 18:54:52 CST 2014
     */
    public void setClickcount(Integer clickcount) {
        this.clickcount = clickcount;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column TMe_MerchandiseInfo.Remark
     *
     * @return the value of TMe_MerchandiseInfo.Remark
     *
     * @mbggenerated Thu Dec 25 18:54:52 CST 2014
     */
    public String getRemark() {
        return remark;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column TMe_MerchandiseInfo.Remark
     *
     * @param remark the value for TMe_MerchandiseInfo.Remark
     *
     * @mbggenerated Thu Dec 25 18:54:52 CST 2014
     */
    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table TMe_MerchandiseInfo
     *
     * @mbggenerated Thu Dec 25 18:54:52 CST 2014
     */

}