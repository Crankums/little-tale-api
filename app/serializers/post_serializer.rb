class PostSerializer
    include FastJsonapi::ObjectSerializer
    attributes :text, :title
    belongs_to :user, serializer: UserSerializer
    has_many :comments, serializer: CommentSerializer
end