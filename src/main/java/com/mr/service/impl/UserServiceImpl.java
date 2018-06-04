package com.mr.service.impl;

import com.mr.jpa.UserRepository;
import com.mr.model.User;
import com.mr.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by ${Gjc} on 2018/6/4.
 */
@Service
@Transactional(readOnly = true)
public class UserServiceImpl implements UserService {
    @Autowired
    private UserRepository userRepository;

    /**
     * 查
     * @return
     */
    @Override
    public List<User> findAll() {
        return (List<User>)this.userRepository.findAll();
    }

    /**
     * 删
     */
    @Override
    @Transactional
    public void delUser(Integer id) {
        userRepository.delete(id);
    }

    /**
     * 增
     * @param user
     */
    @Override
    @Transactional
    public void addUser(User user) {
        userRepository.save(user);
    }

    /**
     * 修
     * @param id
     * @return
     */
    @Override
    public User toUP(Integer id) {
        User one = userRepository.findOne(id);
        return one;
    }

    @Override
    @Transactional
    public void update(User user) {
        userRepository.save(user);
    }
}
