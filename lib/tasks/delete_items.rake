desc 'Removes items over a week old'

task delete_items: :environment do
  Todo.where("created_at <= ?", Time.now + 1.minute).destroy_all
end