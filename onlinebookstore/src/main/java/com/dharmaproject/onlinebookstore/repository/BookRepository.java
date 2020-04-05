package com.dharmaproject.onlinebookstore.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.dharmaproject.onlinebookstore.entity.Book;

public interface BookRepository extends JpaRepository<Book, Long>{

}
