# frozen_string_literal: true

class Price
  class InvalidCurrency < StandardError; end

  SUPPORTED_CURRENCIES = %i[eur usd pln].freeze

  attr_reader :amount, :currency

  def initialize(amount, currency)
    @amount = amount
    @currency = currency
    validate_currency
  end

  private

  def validate_currency
    raise InvalidCurrency unless SUPPORTED_CURRENCIES.include?(currency)
  end
end


#price_in_euro = Price.new(21, :eur)
#puts price_in_euro.amount
#puts price_in_euro.currency

