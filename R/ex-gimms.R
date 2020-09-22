library(gimms)
library(latticeExtra)

onl = updateInventory(server = "ecocast")
head(onl)

dts = monthlyIndices(onl, timestamp = TRUE)
cnt = aggregate(dts, by = list("year" = format(dts, "%Y")), FUN = length)

barchart(
  x ~ as.integer(year)
  , data = cnt
  , horizontal = FALSE
  , col = "grey"
  , panel = function(x, y, ...) {
    panel.barchart(x, y, ...)
    panel.ablineq(lm(y ~ x), rotate = TRUE, col.line = "red", lty = 2)
  }
  , xlab = "year", ylab = "# files"
)
