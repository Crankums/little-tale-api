class CommentSerializer
    include FastJsonapi::ObjectSerializer
    attributes :text, :story_part
    belongs_to :post, serializer: PostSerializer
    belongs_to :user, serializer: UserSerializer
end