# frozen_string_literal: true

module Forms
  module InputField
    class BaseComponent < ViewComponent::Base
      LABEL_CLASS = 'text-gray text-sm font-light tracking-wide'
      INPUT_CLASS = 'mt-2 rounded-lg text-gray-800 border-gray-200 focus:border-[#47228E] border-2 disabled:bg-gray-200 w-full py-3 px-4 placeholder:text-gray-600 placeholder:italic placeholder:font-light'
    end
  end
end
