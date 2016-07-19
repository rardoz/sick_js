module SickJs
  # @private
  # Automatically requires sick_js dependencies within a Rails host app
  class Engine < Rails::Engine
    isolate_namespace SickJs

    initializer 'SickJs.precompile' do |app|
      app.config.assets.precompile += %w(sick_js/libs/all.js)
      app.config.assets.precompile += %w(sick_js/libs/jquery.waypoints.js)
      app.config.assets.precompile += %w(sick_js/libs/maps/usa.js)
      app.config.assets.precompile += %w(sick_js/libs/maps/jvectormap-2.2.0.js)
      app.config.assets.precompile += %w(sick_js/libs/maps/jvectormap.usa.js)
    end
  end
end
