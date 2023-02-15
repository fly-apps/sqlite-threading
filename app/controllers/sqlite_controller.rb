class SqliteController < ApplicationController
  def root
    ActiveRecord::Base.transaction do
      User.find_each do |user|
        $stdout.puts [request.object_id, user.name].inspect
        sleep 0.1
      end
    end
    render inline: "Thats all for request #{request.object_id}!"
  end
end