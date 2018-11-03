namespace :task_sample do
    task :sample do
        puts "test2"
        photo = Photo.new(name: "test")
        photo.save
      end
end
