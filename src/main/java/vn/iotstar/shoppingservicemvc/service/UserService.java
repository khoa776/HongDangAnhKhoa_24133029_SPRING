package vn.iotstar.shoppingservicemvc.service;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import vn.iotstar.shoppingservicemvc.entity.User;

public interface UserService {
    User findById(int id);
    User save(User user);
    void deleteById(int id);
    Page<User> searchAndPaginate(String keyword, Pageable pageable);
}