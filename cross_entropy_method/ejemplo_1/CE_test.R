# Función objetivo: mínimo en x = 2
f <- function(x) {
  (x - 2)^2
}

# Ejecutar CEoptim para encontrar el mínimo
res <- CEoptim(
  f, 
  continuous = list(mean = 0, sd = 5),  # Inicializa búsqueda en torno a 0
  N = 100L,  # Número de muestras por iteración
  rho = 0.1,  # Proporción de muestras elite
  verbose = TRUE
)

# Mostrar resultados
print(res$optimizer$continuous)  # Mejor valor de x
print(res$optimum)               # Valor mínimo de la función

