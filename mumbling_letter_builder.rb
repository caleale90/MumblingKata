class MumblingLettersBuilder

  def initialize(input_string)
    @string = input_string
  end

  def build
    resulting_string = ''
    @string.split('').each.with_index(1) do |char, index|
      resulting_string << '-' unless index == 1
      resulting_string << build_substring(char.downcase, index)
    end
    resulting_string
  end

  private

  def build_substring(char, index)
    resulting_string = char * index
    resulting_string.capitalize
  end

end
