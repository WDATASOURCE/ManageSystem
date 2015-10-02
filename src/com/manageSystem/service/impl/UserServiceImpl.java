package com.manageSystem.service.impl;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import com.manageSystem.dao.UserDAO;
import com.manageSystem.po.User;
import com.manageSystem.service.UserService;

@Transactional
public class UserServiceImpl implements UserService {
	
	private UserDAO userDao;

	@Override
	public void addUser(User user) {
		// TODO �Զ����ɵķ������
		userDao.save(user);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<User> queryAllUser() {
		// TODO �Զ����ɵķ������
		List<User> list = userDao.findAll();
		return list;
	}

	@SuppressWarnings("unchecked")
	@Override
	public void deleteUser(String userLogId) {
		// TODO �Զ����ɵķ������
		List<User> list = userDao.findByUserLogId(userLogId);
		if(list.size() == 0) return;
		userDao.delete(list.get(0));
	}

	@Override
	public void updateUser(User user) {
		// TODO �Զ����ɵķ������
		userDao.merge(user);
	}

	@SuppressWarnings("unchecked")
	@Override
	public User getUserByUserLogId(String userLogId) {
		// TODO �Զ����ɵķ������
		List<User> list = userDao.findByUserLogId(userLogId);
		if(list.size() == 0) return null;
		return list.get(0);
	}

	@Override
	public User getUserByUserId(Integer userId) {
		// TODO �Զ����ɵķ������
		return userDao.findById(userId);
	}
	
	public void setUserDao(UserDAO userDao){
		this.userDao = userDao;
	}
	
	public UserDAO getUserDao(){
		return userDao;
	}
}
