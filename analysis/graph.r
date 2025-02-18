library(ggplot2)
library(ggstatsplot)
library(svglite)

all_uni_2022_data <- read.csv(file = "../data/UCOP_Data_2022.csv", stringsAsFactors = TRUE)

ggbetweenstats(data=all_uni_2022_data, x=location, y=gross.pay, outlier.tagging = TRUE, outlier.label = title, pairwise.display="none", pairwise.comparisons = FALSE, title = "2022 Salary by UC campus", results.subtitle = FALSE, k = 0)

ggsave("2022_data.svg", plot = last_plot(), device = "svg", dpi = "retina")

