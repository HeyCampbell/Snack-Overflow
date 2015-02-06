class Comment < ActiveRecord::Base
  belongs_to :user

  belongs_to :nom

  has_many :replies, foreign_key: :parent_id, class_name: "Comment"
  belongs_to :parent, foreign_key: :parent_id, class_name: "Comment"

  has_many :votes, as: :votable

  validates :body, presence: true
  # validates :post_id, presence: true
  # validates :user_id, presence: true

  def upvote
    Vote.create(votable: self, decision: 1)
  end

  def downvote
    Vote.create(votable: self, decision: 0)
  end

  def upvotes
    self.votes.where(decision: 1)
  end

  def downvotes
    self.votes.where(decision: 0)
  end

end
