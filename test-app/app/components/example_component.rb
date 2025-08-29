# frozen_string_literal: true

class ExampleComponent < ViewComponent::Base
  def initialize(text)
    @text = text
  end

  def call
    tag.div { @text }
  end
end
