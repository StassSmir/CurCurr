% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/curcurr.R
\name{curcurr}
\alias{curcurr}
\title{curcurr}
\usage{
curcurr(curr1, curr2)
}
\arguments{
\item{curr1}{original currency - specify using 3 letters (USD, AUD etc.)}

\item{curr2}{target currency - converts to this currency - specify using 3 letters (USD, AUD etc.)}
}
\value{
double variable containing exchange rate
}
\description{
function provides currency exchange rate based on two parameters
Currency exchange rate
Connects to online API and gets a JSON file containing all the currency exchange rates for a given a currency
}
