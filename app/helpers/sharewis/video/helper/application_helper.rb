module Sharewis
  module Video
    module Helper
      module ApplicationHelper
        def render_video_tag(src: '', type: 'video/mp4')
          render partial: 'sharewis-video-helper/video_tag', locals: { src: src, type: type }
        end
      end
    end
  end
end
