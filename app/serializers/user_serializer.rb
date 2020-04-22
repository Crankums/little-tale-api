class UserSerializer
    include FastJsonapi::ObjectSerializer
    attributes :username, :email
    has_many :posts, serializer: PostSerializer
    has_many :comments, serializer: CommentSerializer
end
