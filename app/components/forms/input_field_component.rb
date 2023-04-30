# frozen_string_literal: true

module Forms
  class InputFieldComponent < InputField::BaseComponent
    def initialize(input_name:, value:, input_options: nil, label: nil, object: nil, disabled: false, input_type: nil,
                   col_span: 1, col_span_breakpoint: 'md', data: {}, options: {}, required: false, placeholder: nil)
      @input_name = input_name
      @value = value
      @input_options = input_options
      @label = label
      @object = object&.model_name&.singular
      @disabled = disabled
      @input_type = input_type
      @col_span = col_span
      @col_span_breakpoint = col_span_breakpoint
      @data = data
      @options = options
      @required = required
      @placeholder = placeholder
    end

    private

    def placeholder = @placeholder || @label || @input_name
    def custom_colspan = "#{@col_span_breakpoint}:col-span-#{@col_span}"

    def input_type = @input_type || :text_field
  end
end
