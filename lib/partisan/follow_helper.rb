module Partisan
  module FollowHelper

  private

    # Retrieves the parent class name if using STI.
    def parent_class_name(obj)
      klass = obj.class if obj.class < ActiveRecord::Base
      klass ||= obj.object.class if obj.respond_to?(:object) && obj.object.class < ActiveRecord::Base
      klass = klass.superclass while klass.superclass != ActiveRecord::Base

      klass.name
    end

  end
end
