package ua.com.torysem.webapp;

import java.util.ArrayList;
import java.util.List;

public class UserList {
    private final List<User> userList;

    //database
    public UserList() {
        userList = new ArrayList<User>();
        userList.add(new User("Tom", "tom24", "12345"));
        userList.add(new User("Jack", "sun3000", "12345"));
        userList.add(new User("Masha", "masha94", "12345"));
        userList.add(new User("Ivan", "admin", "12345"));
        userList.add(new User("Olga", "cat14", "12345"));
    }

    public List<User> getUserList() {
        return userList;
    }
}
