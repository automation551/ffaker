# encoding: utf-8

module FFaker
  module Name
    extend ModuleUtils
    extend self

    PREFIXES = %w(Mr. Mrs. Ms. Miss Dr.).freeze
    SUFFIXES = %w(Jr. Sr. I II III IV V MD DDS PhD DVM).freeze

    def name
      case rand(10)
      when 0 then "#{prefix} #{first_name} #{last_name}"
      when 1 then "#{first_name} #{last_name} #{suffix}"
      else        "#{first_name} #{last_name}"
      end
    end

    def first_name
      FIRST_NAMES.sample
    end

    def last_name
      LAST_NAMES.sample
    end

    def prefix
      PREFIXES.sample
    end

    def suffix
      SUFFIXES.sample
    end
  end
end
