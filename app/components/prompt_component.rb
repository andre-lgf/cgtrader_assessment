# frozen_string_literal: true

class PromptComponent < ViewComponent::Base
  with_collection_parameter :prompt

  def initialize(prompt:)
    @prompt = prompt
  end
end
