library(tidyverse)
library(reactable)
tn <- c("Hajek Anja",
        "Palme Kai",
        "Piel Stefanie",
        "Wachter Barbara",
        "Brügge-Weber Hildegard",
        "Franz Christiane",
        "Heinrichs Efraim",
        "Idler Teresa",
        "Kurray Markus",
        "Ratzel Philipp",
        "Sayer Barbara",
        "Schaber Ann-Kathrin",
        "Schuler Melanie",
        "Weißgerber Julia")


auslosung <- function(tn, grsize) {
  tibble(Name = sample(tn, length(tn)),
         Gruppe = rep(1:grsize, 100)[1:length(tn)]) |>
    arrange(Name) |>
    reactable(
      fullWidth = F,
      pagination = F,
      columns = list(Name = colDef(minWidth = 200))
    )
  
}

auslosung(tn, 3)

