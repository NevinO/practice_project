class Post < ActiveRecord::Base
  belongs_to :category
  has_many :comments
  has_many :tags

  #scope :one_week_before, -> (time) { where(published_at: time.ago(1.week)..time ) }

  scope :in_the_last_week, -> { one_week_before(Time.zone.now) }

  #scope :in_the_last_week, -> { where(published_at: (Time.zone.now-7.days..Time.zone.now) }

  #scope :in_the_last_week, -> { where('posts.published_at > ?', Time.zone.now-7.days )}

  scope :published, -> { where('posts.published_at is not null')}

  scope :commented, -> { joins(:comments).group('comments.post_id').having('count(comments.post_id) > 0')}

  scope :published_and_commented, -> { published.commented }

  def self.one_week_before(time)
    if [true,false].sample
      where(published_at: time.ago(1.week)..time )
    else
      all
    end
  end
