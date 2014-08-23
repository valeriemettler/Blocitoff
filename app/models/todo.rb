class Todo < ActiveRecord::Base

    validates_presence_of :description
    belongs_to :user

    default_scope { order('updated_at DESC') }

end
