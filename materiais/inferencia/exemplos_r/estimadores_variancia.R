
# Fixando a semente 
set.seed(2025)

## Definindo a quantidade de repetições monte carlo
B <- 1000

## Defindo o valor verdadeiro de theta para simular
sigma2 <- 2
mu <- 10

## criando vetores nulos numericos 
sigma2_hat<- numeric(B)
s2_hat <- numeric(B)


## simulacao MC 

n=3

for (b in 1:B) {
  x <- rnorm(n, mean = mu, sd = sqrt(sigma2) )
  sigma2_hat[b] <- sum( ( x - mean(x) )^2 )/n
  s2_hat[b] <- sum( ( x - mean(x) )^2 )/(n-1)
}



library(ggplot2)

df <- data.frame(
  estimativa = c(sigma2_hat, s2_hat),
  estimador = rep(c("sigma2_hat", "s2_hat"), each = B)
)


## Dispersão 

ggplot(df, aes(x = estimador, y = estimativa)) +
  geom_jitter(width = 0.15, alpha = 0.3, color = "steelblue") +
  annotate(
    "point",
    x = c("sigma2_hat", "s2_hat"),
    y = c(sigma2, sigma2),
    color = "red",
    size = 3
  ) +
  theme_minimal()


## Box plot

ggplot(df, aes(x = estimador, y = estimativa)) +
  #geom_jitter(width = 0.15, alpha = 0.3, color = "steelblue") +
  geom_boxplot(width = 0.15, alpha = 0.3, color = "steelblue") +
  theme_minimal()



# Media dos estimadores
mean(sigma2_hat)
mean(s2_hat)


## Variancia dos estimadores
var(sigma2_hat)
var(s2_hat)


## Vies dos estimadores
mean(sigma2_hat) - sigma2 
mean(s2_hat) - sigma2


# Erro Quadrático Médio dos estimadores
mean((sigma2_hat - sigma2)^2)
mean((s2_hat - sigma2)^2)



### AGORA VAMOS SIMULAR O COMPORTAMENTO ASSINTOTICO 


set.seed(2025)

B <- 1000
mu <- 10
sigma2 <- 2

ns <- c(5, 10, 50, 500)

resultados <- data.frame()

for (n in ns) {
  
  sigma2_hat <- numeric(B)
  s2_hat <- numeric(B)
  
  for (b in 1:B) {
    x <- rnorm(n, mean = mu, sd = sqrt(sigma2))
    
    sigma2_hat[b] <- sum((x - mean(x))^2) / n
    s2_hat[b] <- sum((x - mean(x))^2) / (n - 1)
  }
  
  # Media dos estimadores
  media_sigma2_hat = mean(sigma2_hat)
  media_s2_hat = mean(s2_hat)
  
  ## Variancia dos estimadores
  var_sigma2_hat = var(sigma2_hat)
  var_s2_hat = var(s2_hat)
  
  ## Vies ao quadrado dos estimadores
  b2_sigma2_hat = (mean(sigma2_hat) - sigma2)^2 
  b2_s2_hat = (mean(s2_hat) - sigma2)^2
  
  
  # Erro Quadrático Médio dos estimadores
  eqm_sigma2_hat = mean((sigma2_hat - sigma2)^2)
  eqm_s2_hat = mean((s2_hat - sigma2)^2)
  
  
  resultados <- rbind(
    resultados,
    data.frame(
      n = n,
      estimador = c("sigma2_hat", "s2_hat"),
      media = c(media_sigma2_hat, media_s2_hat),
      variancia = c(var_sigma2_hat, var_s2_hat),
      vies2 = c(  b2_sigma2_hat, b2_s2_hat),
      eqm = c( eqm_sigma2_hat, eqm_s2_hat)
    )
  )
}



resultados %>%
  mutate(
    media = round(media, 5),
    variancia = round(variancia, 5),
    vies2 = round(vies2, 7),
    eqm = round(eqm, 5)
  )
