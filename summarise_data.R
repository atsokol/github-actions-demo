library(dplyr)

data <- read_csv("data-raw/data.csv")

data_summary <- data |>
  group_by(NA.) |>
  summarise(DA = sum(DS))

print("Save the data to CSV file")
write.csv(data_summary, "data-raw/data_summary.csv", row.names = FALSE)
