###############################################################
######################### 1º ##################################
###############################################################
xbar <- 14.1;
mu0 <- 15.4;
sigma <- 2;
n <- 35;
z <- (xbar - mu0) / (sigma / sqrt(n));
p <- 2 * pnorm(-abs(z));
p;
# p <- 0.0001203305
# H0: rejeitado, visto que 0.0001203305 < 0.05
alpha <- 0.05;
z.half.alpha <- qnorm(1 - alpha/2);
c(-z.half.alpha, z.half.alpha);

###############################################################
######################### 2º ##################################
###############################################################
xbar <- 50;
mu0 <- 53;
sigma <- sqrt(16);
n <- 15;
z <- (xbar - mu0) / (sigma / sqrt(n));
p <- 2 * pnorm(-abs(z));
p;
# p == 0.003675612
# H0: rejeitado, visto que 0.003675612 < 0.05
alpha <- 0.05;
z.half.alpha <- qnorm(1 - alpha/2);
c(-z.half.alpha, z.half.alpha);

###############################################################
######################### 3º ##################################
###############################################################
vr <- 1.3; 
mu0 <- 7.4;
alpha <- 0.01
sample <- c(6.8, 7.1, 5.9, 7.5, 6.3, 6.9, 7.2, 7.6, 6.6, 6.3);
S <- sd(sample); # standard deviation from the sample
sigma <- sqrt(vr); # standard deviation
n <- length(sample);
df <- (n - 1); # 
xbar <- mean(sample);
tc <- qt(alpha, df=df);
Tt <- (sqrt(n) * (xbar - mu0))/S;
c(tc, Tt);
# H0: rejeitado com nível de significância em 1%