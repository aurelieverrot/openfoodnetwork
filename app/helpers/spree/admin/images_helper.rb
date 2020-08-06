# frozen_string_literal: true

module Spree
  module Admin
    module ImagesHelper
      def options_text_for(image)
        if image.viewable.is_a?(Spree::Variant)
          if image.viewable.is_master?
            Spree.t(:all)
          else
            image.viewable.options_text
          end
        else
          Spree.t(:all)
        end
      end
    end
  end
end
