## USER
has_many :links
has_many :comments
has_many :commented_links, through: :comments, source: :link

## LINK
belongs_to :user
has_many :comments
has_many :users, through: :comments

## COMMENT
belongs_to :user
belongs_to :link