package com.jcm.memo.post.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.jcm.memo.post.dao.PostDAO;
import com.jcm.memo.post.model.post;

@Service
public class PostBO {

	@Autowired
	private PostDAO postDAO;
	
	public int addPost(int userId, String subject, String content,MultipartFile file) {
		
		
		
		return postDAO.insertPost(userId, subject, content);
	}
	
	public List<post> getPostList(int userId){
		return postDAO.selectPostList(userId);
	}
	
	
	public post getPost(int postId) {
		return postDAO.selectPost(postId);
	}
	
	public int deletePost(int postId) {
		return postDAO.deletePost(postId);
	}
}
