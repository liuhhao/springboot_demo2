package com.baizhi;

import com.baizhi.dao.UserDao;
import com.baizhi.entity.User;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;
import tk.mybatis.mapper.entity.Example;

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
        String name = "小";
        Example example = new Example(User.class);
        Example.Criteria criteria = example.createCriteria();
        criteria.andLike("username", name);
        System.out.println(criteria);
        List<User> list = userDao.selectByExample(example);
        for (User user : list) {
            System.out.println(user);
        }
    }

    @Test
    public void test() {
        List<User> users = userDao.selectAll();
        for (User user : users) {
            System.out.println(user);
        }
    }

}
