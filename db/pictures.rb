User.where('id>26 AND avatar_file_name != ""').each do |user|
  if File.file?("#{Rails.root}/public/system/avatars/QWPICS/#{user.avatar_file_name}")
    File.open("#{Rails.root}/public/system/avatars/QWPICS/#{user.avatar_file_name}") do |f|
      user.avatar = f
      user.skip_confirmation_notification!
      user.save
      puts "#{Rails.root}/public/system/avatars/QWPICS/#{user.avatar_file_name}"
    end
  end
  puts "#{Rails.root}/public/system/avatars/QWPICS/#{user.avatar_file_name}"
  require "open-uri"

  if user.avatar_file_name.start_with?('s://')
    begin
      user.avatar = URI.parse("http#{user.avatar_file_name}")
      user.skip_confirmation_notification!
      user.save
    rescue =>e
    end
  end
end