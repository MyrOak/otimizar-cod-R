install.packages("microbenchmark")

# Exemplo com apply
mat <- matrix(1:9, nrow = 3)
result_apply <- apply(mat, 1, sum)

# Exemplo com for
result_for <- numeric(nrow(mat))
for (i in 1:nrow(mat)) {
  result_for[i] <- sum(mat[i, ])
}

library(microbenchmark)
microbenchmark(
  apply = apply(mat, 1, sum),
  for_loop = {
    result_for <- numeric(nrow(mat))
    for (i in 1:nrow(mat)) {
      result_for[i] <- sum(mat[i, ])
    }
  }
)
