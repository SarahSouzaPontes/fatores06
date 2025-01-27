
# Help
?sample

#Argumentos da fun��o
args(sample)

#Calcular a m�dia
args(mean)

#Desvio Padr�o
args(sd)


# Fun��es Built-in
#valor absoluto
abs(-43)

#calcular a soma do vetor
sum(c(1:5))
#calcula a media do vetor
mean(c(1:5))
#arredonda o vetor
round(c(1.1:5.8))
#reverso
rev(c(1:5))
#criar sequencia
seq(1:5)
#ordenar
sort(rev(c(1:5)))
#adicionar
append(c(1:5), 6)


#reverso do vetor
vec1 <- c(1.5, 2.5, 8.4, 3.7, 6.3)
vec2 <- rev(vec1)
vec2


# Fun��es dentro de fun��es cria uma fun��o com distribui��o normal
plot(rnorm(10))
mean(c(abs(vec1), abs(vec2)))


# Criando fun��es
myfunc <- function(x) { x + x }
myfunc(10)
class(myfunc)

myfunc2 <- function(a, b) {
  valor = a ^ b
  print(valor)
}
myfunc2(3, 2)

jogando_dados <- function() {
  num <- sample(1:6, size = 1) #Local
  num
}

jogando_dados()
#aleat�ria

# Escopo
#num escopo local
print(num)
num <- c(1:6)
num #Global


# Funções sem número definido de argumentos
vec1 <- (10:13)
vec2 <- c("a", "b", "c", "d")
vec3 <- c(6.5, 9.2, 11.9, 5.1)

myfunc3 <- function(...){
  df = data.frame(cbind(...))
  print(df)
}
#... n�o h� n�mero fixo da fun��o de acordo com o que � solicitado.

myfunc3(vec1)

myfunc3(vec2, vec3)

myfunc3(vec1, vec2, vec3)


# Funções Built-in - Não tente recriar a roda
# Comparação de eficiência entre função vetorizada e função "vetorizada no R"

x <- 1:10000000

# Função que calcula a raiz quadrada de cada elemento de um vetor de números
meu_sqrt <- function(numeros) {
  resp <- numeric(length(numeros))
  for(i in seq_along(numeros)) {
    resp[i] <- sqrt(numeros[i])
  }
  return(resp)
}


system.time(x2a <- meu_sqrt(x))

#mais veloz essa abaixo, mas � a mesma fun��o acima.
system.time(x2b <- sqrt(x))

# Sua máquina pode apresentar resultado diferente por conta da precisão de cálculo do processador.
identical(x2a, x2b)



