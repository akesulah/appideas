#json.extract! @idea, :id, :name, :desc, :created_at, :updated_at, :keywords

#json.idea do
  json.id @idea.id
  json.name @idea.name
  json.desc simple_format(auto_link(@idea.desc))
  json.created_at @idea.created_at
  json.updated_at @idea.updated_at
  json.keywords @idea.keywords
  json.votes @idea.likes.size-@idea.dislikes.size
  json.comments @comments do |comment|
    json.id comment.id
    json.idea_id comment.commentable_id
    json.type comment.commentable_type
    json.title comment.title
    json.body comment.body
    json.subject comment.subject
  end
#end
