package com.mr.jpa;

import com.mr.model.User;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * Created by ${Gjc} on 2018/6/4.
 */
public interface UserRepository extends JpaRepository<User,Integer>{

}
