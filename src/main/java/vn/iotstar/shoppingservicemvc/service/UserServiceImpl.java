package vn.iotstar.shoppingservicemvc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import vn.iotstar.shoppingservicemvc.entity.User;
import vn.iotstar.shoppingservicemvc.repository.UserRepository;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserRepository userRepository;

    @Override
    public User findById(int id) { return userRepository.findById(id).orElse(null); }

    @Override
    public User save(User user) { return userRepository.save(user); }

    @Override
    public void deleteById(int id) { userRepository.deleteById(id); }

    @Override
    public Page<User> searchAndPaginate(String keyword, Pageable pageable) {
        return userRepository.findByFullnameContainingOrUsernameContaining(keyword, keyword, pageable);
    }
}