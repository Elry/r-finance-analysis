# install.packages("Quandl")
library(Quandl)

# sets key
Quandl.api_key("")

# fetch data
msft_data <- Quandl.datatable("WIKI/PRICES" ,
  qopts.columns=c("date", "close"),
  ticker=c("INTC"),
  date.gte=c("2016-01-01"),
  date.lte=c("2019-12-31"))

ZOO <- zoo(msft_data$close, order.by=as.Date(as.character(msft_data$date), format='%Y-%m-%d'))
msft_ts <- ts(ZOO)

x11()
plot(msft_ts,xlab="Day",ylab="Closing price", main="Intel Closing Stock Prices: 2016 - 2019")

# getting GDP
GDP_data = Quandl("FRED/GDP", start_date="2016-01-01", end_date="2019-12-31",type="ts")

x11()
plot(GDP_data,xlab="Time",ylab="GDP", main="GDP Data",type="b")

Sys.sleep(999)