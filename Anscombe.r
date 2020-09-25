#Carregar os dados no objeto
a <- anscombe

#Reagrupar as colunas e os conjuntos de dados
a1 <- a[,c('x1','y1')]
a2 <- a[,c('x2','y2')]
a3 <- a[,c('x3','y3')]
a4 <- a[,c('x4','y4')]
al <- cbind(a1,a2,a3,a4)

#Visualizar todos os dados em formato tabular
View(al)

#Função para apresentar os coeficientes
coeficienteRegression <- function(dataset)
{
 colnames(dataset) <- c('x','y')

 Regression = lm( dataset$y ~ dataset$x )

 m <- as.data.frame(matrix(c(
 round(Regression$coefficients[1],3) ,
 round(Regression$coefficients[2],3) ,
 round(summary(Regression)$r.squared,3) ,
 round(summary(Regression)$sigma,3)

 ),ncol=4,nrow = 1,byrow = T))

 colnames(m) <- c("Alpha", "Beta", "R^2", "Sigma")
 return(m)
}

#Função para apresentar as métricas
showMetrics <- function(dataset)
{
 m <- as.data.frame(matrix(c(
 'Average','x', round(mean(dataset$x),3),
 'Average','y', round(mean(dataset$y),3),
 'Variance','', round(var(dataset$y),3),
 'Correlation','', round( as.numeric(as.character(cor(dataset)[1,2])) ,3)),ncol=3,nrow = 4,byrow = T))

 colnames(m) <- c("Operation", "Variable", "Result")
 return(m)
}

#Função para desenhar o gráfico
drawGraph <- function(dataset)
{
  x11()
  plot(dataset, pch=21, bg="orange", col="purple", type='p',xlim = c(0,20), ylim = c(0,15))
  Regression = lm( dataset$y ~ dataset$x )
  abline(Regression, col="blue", lwd=3)
}

#Imprimir os quatro gráficos
par(mfrow=c(2,2))
drawGraph(a1)
drawGraph(a2)
drawGraph(a3)
drawGraph(a4)

#Apresentar os Results dos coeficientes
coeficienteRegression(a1)
coeficienteRegression(a2)
coeficienteRegression(a3)
coeficienteRegression(a4)

#Apresentar as métricas de estatística básica
showMetrics(a1)
showMetrics(a2)
showMetrics(a3)
showMetrics(a4)

Sys.sleep(999)