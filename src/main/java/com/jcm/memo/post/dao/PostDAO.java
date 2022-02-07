package com.jcm.memo.post.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.jcm.memo.post.model.post;

@Repository
public interface PostDAO {

	public int insertPost(
			@Param("userId")int userId,
			@Param("subject")String subject,
			@Param("content")String content,
			@Param("imagePath")String imagePath) ;
	
	public List<post> selectPostList(@Param("userId") int userId);
	
	public post selectPost(@Param("postId")int postId);
	
	public int deletePost(@Param("postId")int postId);
}
