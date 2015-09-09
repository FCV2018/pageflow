module Pageflow
  class Theme
    attr_reader :name, :directory_name, :options

    def initialize(name, options = {})
      @name = name.to_s
      @directory_name = name.to_s
      @options = options
    end

    def stylesheet_path
      "pageflow/themes/#{name}.css"
    end

    def has_home_button?
      !@options[:no_home_button]
    end

    def has_scroll_back_indicator?
      !!@options[:scroll_back_indicator]
    end

    def supports_scroll_indicator_modes?
      !!@options[:scroll_indicator_modes]
    end

    def supports_emphasized_pages?
      !!@options[:emphasized_pages]
    end

    def page_change_by_scrolling?
      !@options[:no_page_change_by_scrolling]
    end

    def hide_text_on_swipe?
      !@options[:no_hide_text_on_swipe]
    end
  end
end
