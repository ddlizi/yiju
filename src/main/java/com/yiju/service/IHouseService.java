package com.yiju.service;

import com.yiju.pojo.HouseView;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface IHouseService {
    // 查询房源信息
    List<HouseView> findFourHouse(Integer houseType);

    // 房源详情
    // page - 代表当前页
    List<HouseView> findAllHouseByType(Integer page,Integer houseType);

    HouseView findHouseById(Integer houseId);
}
