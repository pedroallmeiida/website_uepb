---
title: "Revisão de Cálculo Aplicada à Inferência Estatística"
author: "Prof. Pedro Monteiro"
date: "08/11/2025"
format:
   html:
      fontsize: 11pt
---

## Introdução

Esta apostila tem como objetivo revisar os principais conceitos de Cálculo Diferencial e Integral que são aplicados no estudo da Inferência Estatística. 

## 1. Derivadas e Aplicações

Revise as principais regras fundamentais de derivadas. 

### 1.1 Regras fundamentais

#### a) Derivada de potências

$$
\frac{d}{dx} x^n = nx^{n-1}
$$

**Exemplo:**
$\frac{d}{dx} x^3 = 3x^2$

#### b) Derivada de constantes

$$
\frac{d}{dx} c = 0
$$

**Exemplo:**
$\frac{d}{dx} 5 = 0$

#### c) Derivada do exponencial

$$
\frac{d}{dx} e^x = e^x \quad\text{e}\quad \frac{d}{dx} e^{u(x)} = e^{u(x)} \cdot u'(x)
$$

**Exemplo:**
$\frac{d}{dx} e^{-2x} = -2e^{-2x}$

#### d) Derivada do logaritmo natural

$$
\frac{d}{dx} \ln x = \left(\frac{1}{x}\right) \frac{d}{dx}\left\{ x \right\}, \quad \text{para } x > 0
$$

**Exemplo:**
$\frac{d}{dx} \ln(3x) = \frac{1}{x} \cdot 3 = \frac{3}{x}$

#### e) Regra do produto

$$
\frac{d}{dx} [f(x)g(x)] = f'(x)g(x) + f(x)g'(x)
$$

**Exemplo:**
$\frac{d}{dx} (x e^x) = 1\cdot e^x + x\cdot e^x = e^x(1 + x)$

#### f) Regra do quociente

$$
\frac{d}{dx} \left( \frac{f(x)}{g(x)} \right) = \frac{f'(x)g(x) - f(x)g'(x)}{[g(x)]^2}
$$

**Exemplo:**
$\frac{d}{dx} \left( \frac{x}{e^x} \right) = \frac{1\cdot e^x - x\cdot e^x}{(e^x)^2} = \frac{e^x(1 - x)}{e^{2x}} = \frac{1 - x}{e^x}$

#### g) Regra da cadeia

Se $y = f(u(x))$, então:

$$
\frac{dy}{dx} = \frac{dy}{du} \cdot \frac{du}{dx}
$$

**Exemplo:**
$\frac{d}{dx} \ln(5x^2 + 1) = \frac{1}{5x^2 + 1} \cdot 10x = \frac{10x}{5x^2 + 1}$

### 1.2 Encontrando ponto de máximo e mínimo de funções

Os pontos de máximo e mínimo de uma função são pontos importantes que podem ser encontrados usando cálculo diferencial. 

#### Método para Encontrar Extremos

1. **Calcule a derivada primeira** $f'(x)$
2. **Encontre os pontos críticos** (onde $f'(x) = 0$ ou $f'(x)$ não existe)
3. **Analise o sinal da derivada** antes e depois de cada ponto crítico
4. **Classifique cada ponto crítico** como máximo, mínimo ou ponto de sela

#### Teste da Derivada Primeira

| Comportamento de $f'(x)$ | Classificação do Ponto |
|-----------------------------|-----------------------|
| Muda de + para - | Máximo local |
| Muda de - para + | Mínimo local |
| Não muda de sinal | Ponto de sela/inflexão |

#### Exemplo 1: Função Quadrática

**Função:** $f(x) = x^2 - 4x + 3$

1. Derivada: $f'(x) = 2x - 4$$
2. Pontos críticos: $2x - 4 = 0$ ⇒ $x = 2$
3. Análise:
   - Para \( x < 2 \) (EX: x=1): $f'(1) = -2$ (negativo)
   - Para \( x > 2 \) (EX: x=3): $f'(3) = 2$ (positivo)
4. Conclusão: Mínimo local em \( x = 2 \)

##### Quando um ponto de máximo local é global ? 

Se a função tem **apenas um ponto crítico** e é:

- Côncava para baixo ($f''(x) < 0$): o máximo local é global
- Côncava para cima ($f''(x) > 0$): o mínimo local é global

**Exemplo:**  
$f(x) = -x^2 + 4x$:

1. $f'(x) = -2x + 4 = 0 \Rightarrow x = 2$ (único ponto crítico)
2. $f''(x) = -2 < 0$ (sempre côncava para baixo)
3. **Conclusão:** \(x = 2\) é máximo global

### 1.3 Aplicação da derivada em inferência estatística

Aqui vamos utilizar as derivadas para encontrar o ponto que maximiza a função de verossimilhança. A seguir temos um exemplo prático de como aplicar conceitos de derivadas em estatística. 

#### Exemplo: Distribuição Exponencial

Se $X_i \sim \text{Exp}(\lambda)$:

$$
L(\lambda) = \prod_{i=1}^n \lambda e^{-\lambda x_i} = \lambda^n e^{-\lambda \sum_{i=1}^{n} x_i}
$$

Log-verossimilhança:

$$
\ln L(\lambda) = n \ln \lambda - \lambda \sum_{i=1}^{n} x_i
$$

Derivando e igualando a zero:

$$
\frac{d}{d\lambda} \ln L(\lambda) = \frac{n}{\lambda} - \sum_{i=1}^{n} x_i = 0 \Rightarrow \hat{\lambda} = \frac{n}{\sum_{i=1}^{n} x_i} = \frac{1}{\bar{x}}
$$








## 2. Integrais e Aplicações

### 2.1 Propriedades básicas

- Integrais definidas: $\int_a^b f(x)\,dx$
- Substituição: $u = g(x)$
- Integração por partes: $\int u\,dv = uv - \int v\,du$

### 2.2 Esperança, Momento e Variância

Para variável aleatória contínua com fdp $f(x)$:

- Esperança: $\mathbb{E}[X] = \int_{-\infty}^{\infty} x f(x)\,dx$
- Momento: $\mathbb{E}[X^k] = \int_{-\infty}^{\infty} x^k f(x)\,dx$
- Variância: $\mathbb{V}[X] = \mathbb{E}[X^2] - (\mathbb{E}[X])^2$

#### Exemplo: Esperança da Exponencial

Se $X \sim \text{Exp}(\lambda)$:

$$
\mathbb{E}[X] = \int_0^\infty x \lambda e^{-\lambda x} dx
$$

**Integração por partes:**

Sejam: 

- $u = x$,
- $dv = \lambda e^{-\lambda x}dx \rightarrow$ 
- $du = dx$, 
- $v = -e^{-\lambda x}$:

$$
\mathbb{E}[X] = -x e^{-\lambda x} \big|_0^\infty + \int_0^\infty e^{-\lambda x} dx = 0 + \frac{1}{\lambda}
$$

Logo, $\mathbb{E}[X] = \frac{1}{\lambda}$.

## 3. Outras distribuições

### 3.1 Normal $\mathcal{N}(\mu,\sigma^2)$

- Densidade: $f(x) = \frac{1}{\sqrt{2\pi\sigma^2}} e^{-\frac{1}{2\sigma^2}(x - \mu)^2}$
- $\mathbb{E}[X] = \mu$, $\mathbb{V}[X] = \sigma^2$

### 3.2 Normal padrão $\mathcal{N}(0,1)$

- Densidade: $f(x) = \frac{1}{\sqrt{2\pi}} e^{-x^2/2}$
- $\mathbb{E}[X] = 0$, $\mathbb{V}[X] = 1$

### 3.3 Uniforme $(a, b)$

- Densidade: $f(x) = \frac{1}{b - a}$
- Esperança: $\mathbb{E}[X] = \frac{a + b}{2}$
- Variância: $\mathbb{V}[X] = \frac{(b - a)^2}{12}$


### 4. Propriedades matemáticas 

#### Propriedades do logarítmo:

- $\log(a \, b) = \log(a) + \log(b)$

- $\log\left( \prod\limits_{i=1}^n X_i\right) = \sum\limits_{i=1}^n \log(X_i)$

- $\log( \frac{a}{b} ) = \log(a) - \log(b)$

- $\log ( e^a) = a$

#### Propriedades da exponencial

- $\exp(a) \exp(b) = \exp(a + b)$

- $\exp(X_1) \cdots \exp(X_n)= \prod\limits_{i=1}^n \exp(X_i) = \exp\left(\sum\limits_{i=1}^n X_i \right)$

- $\exp\left( \log(a) \right) = a$


### 5. Operadores de somatório e produtório 

#### Somatório 

O operador somatório, diga-se $\sum$, é usado quando queremos representar a soma de vários elementos. Por exemplo, suponha que temos 3 elementos, $x_1 = 4, x_2 = 5, x_3 = 10$. Então, podemos resumir: 

$$
4 + 5 + 10 = x_1 + x_2 + x_3 = \sum\limits_{i=1}^n x_i 
$$


#### Produtório 

O operador produtório, diga-se $\prod$, é usado quando queremos representar o produto de vários elementos. Por exemplo, suponha que temos 3 elementos, $x_1 = 4, x_2 = 5, x_3 = 10$. Então, podemos resumir: 

$$
4 \times 5 \times 10 = x_1 \times x_2 \times x_3 = \prod\limits_{i=1}^n x_i 
$$

## Exercícios 

# Somatório ($\sum$)

## 1. Expansão e Cálculo Simples

### a) 
$\sum_{i=1}^{5} i = 1 + 2 + 3 + 4 + 5$

### b) 
$\sum_{k=2}^{4} (k+1) = (2+1) + (3+1) + (4+1) = 3 + 4 + 5$

### c) 
$\sum_{i=1}^{5} i^2 = 1^2 + 2^2 + 3^2 + 4^2 + 5^2 = 1 + 4 + 9 + 16 + 25$

### d) 
$\sum_{k=2}^{4} e^{(k+1)} = e^3 + e^4 + e^5$

### e) 
$\sum_{j=1}^{4} e^{j} = e^1 + e^2 + e^3 + e^4$

### f)
$\sum_{j=1}^{4} \exp\left( \frac{(j - 1)^2}{2}\right) = e^0 + e^{0.5} + e^2 + e^{4.5}$

## 2. Propriedades do Somatório

### a)
$\sum_{i=1}^{n} (i+3) = \sum_{i=1}^{n} i + \sum_{i=1}^{n} 3$

### b)
$\sum_{i=1}^{5} 7$

---

# Produtório ($\prod$)

## 1. Expansão e Cálculo Simples

### a) 
$\prod_{i=1}^{5} i = 1 \times 2 \times 3 \times 4 \times 5 = 120$

### b) 
$\prod_{k=2}^{4} (k+1) = 3 \times 4 \times 5 = 60$

### c) 
$\prod_{i=1}^{5} i^2 = (1 \times 2 \times 3 \times 4 \times 5)^2$

### d) 
$\prod_{k=2}^{4} e^{(k+1)} = e^3 \times e^4 \times e^5 = e^{12}$

### e) 
$\prod_{j=1}^{4} e^{j} = e^1 \times e^2 \times e^3 \times e^4 = e^{10}$

### f) 
$\prod_{j=1}^{4} \exp\left( \frac{(j - 1)^2}{2}\right)$

### g) (x₁=1, x₂=3, x₃=5)
$\prod_{j=1}^{3} x_j!$

### h)
$\prod_{k=1}^{4} \binom{5}{k}$

## 2. Propriedades do Produtório

### a) 
$\prod_{i=1}^{n} (i \cdot 2) = 2^n \times \prod_{i=1}^{n} i$

### b)
$\prod_{i=1}^{4} 3 = 3^4$