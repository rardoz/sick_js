require 'sick_js/version'

module SickJs
  class << self

    def load!
      register_rails_engine if rails?
    end

    protected

    def rails?
      defined?(::Rails)
    end

    def register_rails_engine
      require 'sick_js/engine'
    end
  end
end

SickJs.load!
