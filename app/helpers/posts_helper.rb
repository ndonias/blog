module PostsHelper
	def display_post(post)
		result = link_to post.title, post_path(post)
		result<< " (written #{time_ago_in_words(post.created_at)} ago)"
		if current_user == post.user
			result<<" | "
			result << link_to('edit', edit_post_path(post))
			result << " | "
			result << link_to('delete', post_path(post), method: :delete,
		data: {confirm: "Are you sure?"})
		end
		result.html_safe
	end
end