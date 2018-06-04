package com.mr.service;

import com.mr.model.User;

import java.util.List;

/**
 * Created by ${Gjc} on 2018/6/3.
 */
public interface UserService {

    List<User> findAll();

    void delUser(Integer id);

    void addUser(User user);

    User toUP(Integer id);

    void update(User user);
}
