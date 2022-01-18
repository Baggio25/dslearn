package com.devsuperior.dslearnbds.resources.exceptions;

import java.time.Instant;

import javax.servlet.http.HttpServletRequest;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.MethodArgumentNotValidException;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

import com.devsuperior.dslearnbds.services.exceptions.DatabaseException;
import com.devsuperior.dslearnbds.services.exceptions.ForbiddenException;
import com.devsuperior.dslearnbds.services.exceptions.ResourceNotFoundException;
import com.devsuperior.dslearnbds.services.exceptions.UnauthorizedException;

@ControllerAdvice
public class ResourceExceptionHandler {
	
	private static Integer STATUS_NOT_FOUND = HttpStatus.NOT_FOUND.value(); // 404 not found
	private static Integer STATUS_BAD_REQUEST = HttpStatus.BAD_REQUEST.value(); // 400 bad request
	private static Integer STATUS_UNPROCESSABLE = HttpStatus.UNPROCESSABLE_ENTITY.value(); // 422 umprocessable entity
	private static Integer STATUS_FORBIDDEN = HttpStatus.FORBIDDEN.value(); // 403 Forbidden exception
	private static Integer STATUS_UNAUTHORIZED = HttpStatus.UNAUTHORIZED.value(); // 401 Unauthorized exception

	@ExceptionHandler(ResourceNotFoundException.class)
	public ResponseEntity<StandardError> entityNotFound(ResourceNotFoundException e, HttpServletRequest request) {
		StandardError error = new StandardError();
		error.setTimestamp(Instant.now());
		error.setStatus(STATUS_NOT_FOUND);
		error.setError("Resource not found");
		error.setMessage(e.getMessage());
		error.setPath(request.getRequestURI());
		
		return ResponseEntity.status(STATUS_NOT_FOUND).body(error);
	}
	
	@ExceptionHandler(DatabaseException.class)
	public ResponseEntity<StandardError> databaseIntegrity(DatabaseException e, HttpServletRequest request) {
		StandardError error = new StandardError();
		error.setTimestamp(Instant.now());
		error.setStatus(STATUS_BAD_REQUEST);
		error.setError("Database integrity exception");
		error.setMessage(e.getMessage());
		error.setPath(request.getRequestURI());
		
		return ResponseEntity.status(STATUS_BAD_REQUEST).body(error);
	}
	
	@ExceptionHandler(MethodArgumentNotValidException.class)
	public ResponseEntity<ValidationError> validation(MethodArgumentNotValidException e, HttpServletRequest request) {
		ValidationError error = new ValidationError();
		error.setTimestamp(Instant.now());
		error.setStatus(STATUS_UNPROCESSABLE);
		error.setError("Validation exception");
		error.setMessage(e.getMessage());
		error.setPath(request.getRequestURI());
		
		for(FieldError fieldError : e.getBindingResult().getFieldErrors()) {
			error.addError(fieldError.getField(), fieldError.getDefaultMessage());
		}
		
		return ResponseEntity.status(STATUS_UNPROCESSABLE).body(error);
	}
	
	@ExceptionHandler(ForbiddenException.class)
	public ResponseEntity<OAuthCustomError> forbidden(ForbiddenException e, HttpServletRequest request) {
		OAuthCustomError error = new OAuthCustomError("Forbidden", e.getMessage());		
		return ResponseEntity.status(STATUS_FORBIDDEN).body(error);
	}
	
	@ExceptionHandler(UnauthorizedException.class)
	public ResponseEntity<OAuthCustomError> unauthorized(UnauthorizedException e, HttpServletRequest request) {
		OAuthCustomError error = new OAuthCustomError("Unauthorized", e.getMessage());		
		return ResponseEntity.status(STATUS_UNAUTHORIZED).body(error);
	}
}
