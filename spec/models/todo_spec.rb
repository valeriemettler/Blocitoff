require 'rails_helper'

RSpec.describe Todo, :type => :model do
  it "should belong to a user" do
    todo = Todo.new(description: "This is my description", user_id: 1)
    expect(todo.save) eq(true)
  end

end
