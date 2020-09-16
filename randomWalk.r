# Common random walk
rw <- arima.sim(model = list(order = c(0,1,0)), n=200)
plot.ts(rw, main="Random Walk", col=4)

rw_diff <- diff(rw)
plot(rw_diff, col=4, main="Random Walk Difference")

# mean & standard deviation
sd(rw_diff)
mean(rw_diff)

# Drifting random walk
rw_drift <- arima.sim(model = list(order = c(0,1,0)), n=200, mean=1, sd=5)
plot.ts(rw_drift, main = "Drifting random walk")

# Drift difference
rw_drift_diff <- diff(rw_drift)
plot.ts(rw_drift_diff, col=4, main="Drift difference")

# Differencing
wn_model <- arima(rw_drift_diff, order = c(0,0,0))
print(wn_model)

# Estimated trend
plot.ts(rw_drift, main = "Drifting random walk")
abline(0, wn_model$coef, col=2)