## USER
has_many :articles
has_many :comments
has_many :commented_articles, through: :comments, source: :article

## ARTICLE
belongs_to :user
has_many :comments
has_many :users, through: :comments

## COMMENT
belongs_to :user
belongs_to :article