package vn.iotstar.shoppingservicemvc.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import vn.iotstar.shoppingservicemvc.entity.User;

@Repository
public interface UserRepository extends JpaRepository<User, Integer> {
    Page<User> findByFullnameContainingOrUsernameContaining(String fullname, String username, Pageable pageable);
}