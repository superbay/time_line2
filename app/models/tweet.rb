class Tweet < ActiveRecord::Base
  def self.fetch( limit = 20 )
    count = 0
    TweetStream::Client.new.sample do |status|
      # The status object is a special Hash with
      # method access to its keys.
      #puts "#{status.text}"
      self.create(
        username: status.user.name,
        screen_name: status.user.screen_name,
        profile_image_url: status.user.profile_image_url,
        content: status.text,
        happened_at: status.created_at,
        source: status.source
      )
      count += 1 
      break if count > limit
    end
    self.take(limit)
  end
end
