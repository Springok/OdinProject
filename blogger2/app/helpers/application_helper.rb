module ApplicationHelper

def render_article_comments_count(article)
  article.comments.size
end

def render_article_comment_created_at(comment)
  distance_of_time_in_words(comment.article.created_at, comment.created_at)
end

end
