package ru.geekbrains.mySpringSecurity.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import ru.geekbrains.mySpringSecurity.entities.Authority;

@Repository
public interface AuthorityRepository extends CrudRepository<Authority, Long> {
}
