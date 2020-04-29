package com.yiju.bean;

/**
 *   实体类
 */
public class UserInfo {

    private Integer userId;             // 用户id
    private String phone;               // 用户手机号
    private String password;            // 用户密码
    private String email;               // 用户邮箱
    private String nickname;            //用户昵称
    private String truename;            // 真实姓名
    private Integer gender;             // 性别 ， 0 - 男，  1 - 女
    private String province;            // 省份
    private String city;                // 城市
    private Integer isDelete;           // 是否删除
    private long createTime;            // 创建时间
    private long updateTime;            // 修改时间


    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    public String getTruename() {
        return truename;
    }

    public void setTruename(String truename) {
        this.truename = truename;
    }

    public Integer getGender() {
        return gender;
    }

    public void setGender(Integer gender) {
        this.gender = gender;
    }

    public String getProvince() {
        return province;
    }

    public void setProvince(String province) {
        this.province = province;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public Integer getIsDelete() {
        return isDelete;
    }

    public void setIsDelete(Integer isDelete) {
        this.isDelete = isDelete;
    }

    public long getCreateTime() {
        return createTime;
    }

    public void setCreateTime(long createTime) {
        this.createTime = createTime;
    }

    public long getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(long updateTime) {
        this.updateTime = updateTime;
    }

    public UserInfo() {
    }

    public UserInfo(Integer userId, String phone, String password, String email, String nickname, String truename, Integer gender, String province, String city, Integer isDelete, long createTime, long updateTime) {
        this.userId = userId;
        this.phone = phone;
        this.password = password;
        this.email = email;
        this.nickname = nickname;
        this.truename = truename;
        this.gender = gender;
        this.province = province;
        this.city = city;
        this.isDelete = isDelete;
        this.createTime = createTime;
        this.updateTime = updateTime;
    }

    @Override
    public String toString() {
        return "UserInfo{" +
                "userId=" + userId +
                ", phone='" + phone + '\'' +
                ", password='" + password + '\'' +
                ", email='" + email + '\'' +
                ", nickname='" + nickname + '\'' +
                ", truename='" + truename + '\'' +
                ", gender=" + gender +
                ", province='" + province + '\'' +
                ", city='" + city + '\'' +
                ", isDelete=" + isDelete +
                ", createTime=" + createTime +
                ", updateTime=" + updateTime +
                '}';
    }
}
