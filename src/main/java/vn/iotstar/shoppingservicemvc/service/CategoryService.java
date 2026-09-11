package vn.iotstar.shoppingservicemvc.service;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import vn.iotstar.shoppingservicemvc.entity.Category;
import java.util.List;

public interface CategoryService {
    List<Category> findAll();
    Category findById(int id);
    Category save(Category category);
    void deleteById(int id);
    Page<Category> searchAndPaginate(String name, Pageable pageable);
}