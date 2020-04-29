package com.yiju.bean;

/**
 * 用户认证实体类
 */
public class UserAuth {

    private int authId; //认证id
    private int userId; //用户id
    private String userName; //用户姓名
    private int userGender; //性别
    private String userCard; //身份证号码
    private String userCardAddress; //身份证住址
    private String userLiveAddress; //住址
    private String userCarding; //证件照
    private String userPropertyimg; //房产证照片
    private int authStatus;//认证状态
    private int isDelete; //是否已删除 0-未删除 1-已删除
    private long createTime; //创建时间
    private long updateTime; //更新时间

    public int getAuthId() {
        return authId;
    }

    public void setAuthId(int authId) {
        this.authId = authId;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public int getUserGender() {
        return userGender;
    }

    public void setUserGender(int userGender) {
        this.userGender = userGender;
    }

    public String getUserCard() {
        return userCard;
    }

    public void setUserCard(String userCard) {
        this.userCard = userCard;
    }

    public String getUserCardAddress() {
        return userCardAddress;
    }

    public void setUserCardAddress(String userCardAddress) {
        this.userCardAddress = userCardAddress;
    }

    public String getUserLiveAddress() {
        return userLiveAddress;
    }

    public void setUserLiveAddress(String userLiveAddress) {
        this.userLiveAddress = userLiveAddress;
    }

    public String getUserCarding() {
        return userCarding;
    }

    public void setUserCarding(String userCarding) {
        this.userCarding = userCarding;
    }

    public String getUserPropertyimg() {
        return userPropertyimg;
    }

    public void setUserPropertyimg(String userPropertyimg) {
        this.userPropertyimg = userPropertyimg;
    }

    public int getAuthStatus() {
        return authStatus;
    }

    public void setAuthStatus(int authStatus) {
        this.authStatus = authStatus;
    }

    public int getIsDelete() {
        return isDelete;
    }

    public void setIsDelete(int isDelete) {
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

    @Override
    public String toString() {
        return "UserAuth{" +
                "authId=" + authId +
                ", userId=" + userId +
                ", userName='" + userName + '\'' +
                ", userGender=" + userGender +
                ", userCard='" + userCard + '\'' +
                ", userCardAddress='" + userCardAddress + '\'' +
                ", userLiveAddress='" + userLiveAddress + '\'' +
                ", userCarding='" + userCarding + '\'' +
                ", userPropertyimg='" + userPropertyimg + '\'' +
                ", authStatus=" + authStatus +
                ", isDelete=" + isDelete +
                ", createTime=" + createTime +
                ", updateTime=" + updateTime +
                '}';
    }
}
