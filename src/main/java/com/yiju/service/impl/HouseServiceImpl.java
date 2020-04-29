package com.yiju.service.impl;

import com.github.pagehelper.PageHelper;
import com.yiju.dao.IHouseDao;
import com.yiju.pojo.HouseView;
import com.yiju.service.IHouseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class HouseServiceImpl implements IHouseService {

    @Autowired
    private IHouseDao houseDao;


    @Override
    public List<HouseView> findFourHouse(Integer houseType) {
        return this.houseDao.findFourHouse(houseType);
    }

    @Override
    public List<HouseView> findAllHouseByType(Integer page, Integer houseType) {
        PageHelper.startPage(page,5);
        return this.houseDao.findAllHouseByType(houseType);
    }

    @Override
    public HouseView findHouseById(Integer houseId) {
        return this.houseDao.findHouseById(houseId);
    }
}
