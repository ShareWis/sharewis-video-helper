module Sharewis
  module Video
    module Helper
      class Engine < ::Rails::Engine
        isolate_namespace Sharewis::Video::Helper
        initializer 'sharewis-video-helper.action_view_helpers' do
          ActiveSupport.on_load :action_view do
            include ApplicationHelper
          end
        end
      end
    end
  end
end
