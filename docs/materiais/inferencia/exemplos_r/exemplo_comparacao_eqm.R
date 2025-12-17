
# Fixando a semente 
set.seed(2025)

## Definindo a quantidade de repetições monte carlo
B <- 1000

## Defindo o valor verdadeiro de theta para simular
theta <- 2

## criando vetores nulos numericos 
theta1 <- numeric(B)
theta2 <- numeric(B)


## simulacao MC 

for (b in 1:B) {
  
  x <- rnorm(3, mean = theta, sd = 1)
  theta1[b] <- mean(x)
  theta2[b] <- 0.5*x[1] + 0.25*x[2] + 0.25*x[3]
  
}


# Media e Variancia dos estimadores
mean(theta1); var(theta1)
mean(theta2); var(theta2)

## vies do estimador 
vies_theta1 = mean(theta1) - theta;vies_theta1
vies_theta2 = mean(theta2) - theta;vies_theta2


# Erro Quadrático Médio dos estimadores
mean((theta1 - theta)^2)
mean((theta2 - theta)^2)



library(ggplot2)

df <- data.frame(
  estimativa = c(theta1, theta2),
  estimador = rep(c("theta1", "theta2"), each = B)
)


## Dispersão 

ggplot(df, aes(x = estimador, y = estimativa)) +
  geom_jitter(width = 0.15, alpha = 0.3, color = "steelblue") +
  annotate(
    "point",
    x = c("theta1", "theta2"),
    y = c(theta, theta),
    color = "red",
    size = 3
  ) +
  theme_minimal()


## Box plot

ggplot(df, aes(x = estimador, y = estimativa)) +
  #geom_jitter(width = 0.15, alpha = 0.3, color = "steelblue") +
  geom_boxplot(width = 0.15, alpha = 0.3, color = "steelblue") +
  theme_minimal()





