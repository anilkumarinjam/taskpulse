package com.example.taskpulse.todo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Component;

@Component
public interface ToDoRepository extends JpaRepository<ToDo, Integer>{

	public List<ToDo> findByUsername(String username);
}
