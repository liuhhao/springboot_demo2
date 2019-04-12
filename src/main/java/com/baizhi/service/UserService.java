package com.baizhi.service;

import com.baizhi.entity.User;

import java.util.List;

public interface UserService {
    public User selectOne(Integer id);

    public List<User> selectAll();
}
