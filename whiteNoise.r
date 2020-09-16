# common white noise
wn <- arima.sim(model = list(order = c(2,2,2)), n=400)
plot.ts(wn,col=4,main="White noise")

sd(wn)
var(wn)
mean(wn)

# White noise with defined mean
wn_2 <- arima.sim(model = list(order = c(0, 0, 0)), n = 200, mean=50, sd=10)
plot.ts(wn_2,col=4, main="White Noise Series (mean=50, sd=10)")

sd(wn_2)
var(wn_2)
mean(wn_2)