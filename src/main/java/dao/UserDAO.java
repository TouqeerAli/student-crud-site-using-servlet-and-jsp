package dao;

import java.util.List;

import model.User;

public interface UserDAO {
	boolean addUser(User user);
	List<User> getUsers();
}
