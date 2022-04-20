
library(httr)
#' @title curcurr
#' @description function provides currency exchange rate based on two parameters
#' Currency exchange rate
#' Connects to online API and gets a JSON file containing all the currency exchange rates for a given a currency
#' @param curr1 original currency - specify using 3 letters (USD, AUD etc.)
#' @param curr2 target currency - converts to this currency - specify using 3 letters (USD, AUD etc.)
#' @return double variable containing exchange rate
curcurr <- function(curr1, curr2) {
  rates <- GET(paste("https://api.currencyapi.com/v3/latest?apikey=4KwYOuxjGtUhhjJsSzyubCcz90pUl852nT0zv2Ot&base_currency=",curr1,sep=""))
  curr <- content(rates)
  get(curr2, curr$data)$value
  return (get(curr2, curr$data)$value)
}

#' @title example_convert
#' @description function does a test conversion using curcurr function to converrt from USD to CAD
example_convert <- function()
{
  curcurr("USD", "CAD")
}
