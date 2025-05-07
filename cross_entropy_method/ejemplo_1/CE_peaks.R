
# Definir la función objetivo (la función Peaks modificada)
fun <- function(x) {
  3 * (1 - x[1])^2 * exp(-x[1]^2 - (x[2] + 1)^2) -
    10 * (x[1]/5 - x[1]^3 - x[2]^5) * exp(-x[1]^2 - x[2]^2) -
    (1/3) * exp(-(x[1] + 1)^2 - x[2]^2)
}

# Semilla para reproducibilidad
set.seed(1234)

# Parámetros iniciales para la distribución (media y desviación estándar)
mu0 <- c(-3, -3)
sigma0 <- c(10, 10)

# Ejecutar CEoptim para maximizar la función
res <- CEoptim(
  fun,
  continuous = list(mean = mu0, sd = sigma0),
  maximize = TRUE
)

# Mostrar resultados
print(res)  # Muestra información completa: óptimo, ubicación y convergencia

# Extraer valores específicos
cat("Valor máximo encontrado:", res$optimum, "\n")
cat("Coordenadas del óptimo:", res$optimizer$continuous, "\n")
