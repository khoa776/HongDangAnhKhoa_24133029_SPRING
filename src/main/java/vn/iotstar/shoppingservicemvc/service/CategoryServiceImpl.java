package vn.iotstar.shoppingservicemvc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import vn.iotstar.shoppingservicemvc.entity.Category;
import vn.iotstar.shoppingservicemvc.repository.CategoryRepository;
import java.util.List;

@Service
public class CategoryServiceImpl implements CategoryService {

    @Autowired
    private CategoryRepository categoryRepository;

    @Override
    public List<Category> findAll() { return categoryRepository.findAll(); }

    @Override
    public Category findById(int id) { return categoryRepository.findById(id).orElse(null); }

    @Override
    public Category save(Category category) { return categoryRepository.save(category); }

    @Override
    public void deleteById(int id) { categoryRepository.deleteById(id); }

    @Override
    public Page<Category> searchAndPaginate(String name, Pageable pageable) {
        return categoryRepository.findByCategorynameContaining(name, pageable);
    }
}