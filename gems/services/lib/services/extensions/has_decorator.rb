module Services::Extensions
  module HasDecorator
    extend ActiveSupport::Concern

    included do
      class_attribute :decorator_class_name
    end

    module ClassMethods
      def decorator(name)
        self.decorator_class_name = name.to_s
      end
    end

    def decorated_collection
      collection = if build_collection.kind_of?(Array)
        build_collection
      elsif build_collection.respond_to?(:all)
        build_collection.all
      else
        Array.wrap(build_collection)
      end
      return collection.map{|i| decorator_class.new(i)}
    end

    private

    def decorator_class
      if self.class.decorator_class_name
        self.class.decorator_class_name.to_s.classify.constantize
      else
        Services::Decorator
      end
    end
  end
end
