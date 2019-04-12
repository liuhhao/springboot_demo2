package com.baizhi;

import com.baizhi.dao.UserDao;
import com.baizhi.entity.User;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.List;

@RunWith(SpringRunner.class)
@SpringBootTest
public class SpringbootDemo2ApplicationTests {
    @Autowired
    private UserDao userDao;
    @Test
    public void contextLoads() {
        User user = userDao.selectByPrimaryKey(1);
        System.out.println(user);
    }
    @Test
    public void updateByPrimaryKey() {
        User user=new User();
        user.setId(1);
        user.setUsername("张三");
        int i = userDao.updateByPrimaryKeySelective(user);
        System.out.println(i);

    }
    @Test
    public void select(){
        User user=new User();
        user.setId(1);
    }

    @Test
    public void test() {
        List<User> users = userDao.selectAll();
        for (User user : users) {
            System.out.println(user);
        }
    }

}
