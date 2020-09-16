# Auto regressive model: slope goes from -1 to 1, the closer the slope gets to 1
# the more persistent the model becomes; on the other hand, getting closer to -1
# increases variation, exhibiting an oscillatory behavior in the model.
# Note: Random walk is a auto regressive model where the slope is equal to 1

# slope == 0.5
ar_1 <- arima.sim(model = list(ar = 0.5), n = 200)
# slope == 0.8
ar_2 <- arima.sim(model = list(ar = 0.8), n = 200)

plot.ts(cbind(ar_1, ar_2), main = "Auto regressive model with simulated data")

# computing and ploting autocovariance | autocorrelation
acf(ar_1)
# computing and ploting partial autocorrelation
pacf(ar_1)