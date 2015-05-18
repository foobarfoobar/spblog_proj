class Country < ActiveRecord::Base
    has_many :airports do
      def international(status)
        where(international: status)
      end
    end
  
  # has_many :international_airports,
           # :class_name => "Airport",
           # :conditions => {:international => true}
  # has_many :regional_airports,
            # :class_name => "Airport",
            # :conditions => {:international => false}           
            
  # Valid keys are: :class_name, :class, :foreign_key, :validate, :autosave, :table_name,
 # :before_add, :after_add, :before_remove, :after_remove, :extend, :primary_key, :dependent, :as, :through,
 # :source, :source_ty
# pe, :inverse_of, :counter_cache, :join_table
end
