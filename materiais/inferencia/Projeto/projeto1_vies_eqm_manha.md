---
title: "Projeto 1"
author: "Prof. Pedro Monteiro"
date: "12/17/2025"
format:
   html:
      fontsize: 11pt
---

# Avaliando viés e EQM de estimadores 

Nesse projeto vamos avaliar a propriedade de viés de um estimador e comparar diferentes estimadores através do Erro Quadrático Médio (EQM). Dessa forma, a seguir vamos apresentar as diretrizes para o projeto. 


## Diretrizes

O projeto deve seguir as seguintes diretrizes: 

- Falar sobre a **distribuição de probabilidade** de estudo (Suas principais caracteristicas, quando devemos usar e situações práticas de uso); 
- Apresentar os cálculos teóricos do **viés** e **EQM** dos estimadores;
- Fazer um **estudo de simulação de monte carlo** no R para avaliar os estimadores. Para este fim, usar B=10000 réplicas de Monte Carlo e variar o tamanho da amostra em 5, 10, 50 e 500; 
- **Interpretar os resultados** encontrados através do estudo de simulação. Podem fazer tabelas e/ou gráficos para comparar. 


## Distribuições e estimadores

A seguir vamos apresentar as distribuições e estimadores que deverão ser usados no estudo por cada aluno. 

### Alice Vitoria

- Sejam $X_1, \ldots, X_n$ variáveis aleatórias i.i.d. com distribuição de Bernoulli, ou seja, $X_i \sim \text{Bernoulli}(p)$, com $0 < p < 1$. Considere para o estudo os seguintes estimadores para o parâmetro $p$:

$$
\hat{p}_1 = \frac{1}{n} \sum\limits_{i=1}^{n} X_i \quad \text{e}  \quad \hat{p}_2 = \frac{1}{n-2} \sum\limits_{i=1}^{n} X_i
$$
	
	
### Dinah Sophia

- Sejam $X_1, \ldots, X_n$ variáveis aleatórias i.i.d. com distribuição Exponencial($\lambda$), com função densidade dada por  com $\lambda > 0$. Considere para o estudo os seguintes estimadores para o parâmetro $\frac{1}{\lambda}$:

$$
\widehat{\lambda}_1 = \bar{X} \quad  \text{e}  \quad \widehat{\lambda}_2 = \frac{n}{n+1} \bar{X}
$$
	

### Alessandra Paulo

- Sejam $X_1, \ldots, X_n$ variáveis aleatórias i.i.d. com distribuição Normal($\mu$, $\sigma^2 = 10$), com $-\infty < \theta < \infty$. Considere para o estudo os seguintes estimadores para o parâmetro $\mu$:

$$
\hat{\mu}_1 = \frac{1}{n} \sum\limits_{i=1}^{n} X_i \quad  \text{e}  \quad \hat{\mu}_2 = \frac{1}{n+1} \sum\limits_{i=1}^{n} X_i
$$


### Sarah Kauanny

- Sejam $X_1, \ldots, X_n$ variáveis aleatórias i.i.d. com distribuição Uniforme($0, \theta$), com $0 < \theta < \infty$. Considere para o estudo os seguintes estimadores para o parâmetro $\theta$:

$$
\hat{\theta}_1 = \frac{1}{n} \sum\limits_{i=1}^{n} X_i \quad  \text{e}  \quad \hat{\theta}_2 = \frac{2}{n} \sum\limits_{i=1}^{n} X_i
$$


### Filipe Meira

- Sejam $X_1, \ldots, X_n$ variáveis aleatórias i.i.d. com distribuição Poisson($\lambda$), com $\lambda > 0$. Considere para o estudo os seguintes estimadores para o parâmetro $\lambda$:

$$
\hat{\lambda}_1 = \frac{1}{n} \sum\limits_{i=1}^{n} X_i \quad \text{e}  \quad \hat{\lambda}_2 = \frac{1}{n-1} \sum\limits_{i=1}^{n} X_i
$$