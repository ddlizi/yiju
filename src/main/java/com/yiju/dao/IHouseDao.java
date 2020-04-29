package com.yiju.dao;

import org.apache.ibatis.annotations.Param;
import com.yiju.pojo.HouseView;

import java.util.List;

public interface IHouseDao {

    // 查询房源信息
    List<HouseView> findFourHouse(@Param("houseType") Integer houseType);


    List<HouseView> findAllHouseByType(@Param("houseType") Integer houseType);

    HouseView findHouseById(@Param("houseId") Integer houseId);
}
