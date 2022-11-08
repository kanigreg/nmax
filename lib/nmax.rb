# frozen_string_literal: true

require_relative 'nmax/version'

module Nmax
  class Error < StandardError; end
  class << self
    def max_numbers(count, stream = $stdin)
      @buffer ||= Array.new(count)

      while (readed = stream.gets)
        number = Integer(readed)
        handle(number)
      end

      @buffer.compact
    end

    private

    def handle(number)
      index = @buffer.bsearch_index { |n| n.nil? || n < number }

      return if index.nil?

      @buffer.pop
      @buffer.insert(index, number)
    end
  end
end
