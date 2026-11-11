# Synthetic Retail Order Analysis
# Synthetic-data demonstration. No real or personal data are used.
# AI Assistance Declaration: ChatGPT (GPT-6, 2026-11-11) assisted with
# documentation structure and wording. I am responsible for checking this code.

set.seed(400)

# Create a small synthetic dataset
n <- 60
data <- data.frame(
  channel = sample(c("Online", "In-store", "Pickup"), n, replace = TRUE),
  order_value = round(runif(n, min = 15, max = 180), 2),
  items = sample(1:8, n, replace = TRUE)
)
data$channel <- factor(data$channel, levels = c("Online", "In-store", "Pickup"))
group = "channel"
measure = "order_value"


# Inspect the data before analysis
str(data)
head(data)
summary(data)

# Summarise the main measure by group
summary_table <- aggregate(order_value ~ channel, data = data, FUN = mean)
print(summary_table)


# Save a simple visual summary
library(ggplot2)

p <- ggplot(data, aes(x = .data[[group]], y = .data[[measure]])) +
  geom_boxplot() +
  labs(
    title = "Synthetic Retail Order Analysis: synthetic data overview",
    x = "- `channel`",
    y = "Measure"
  ) +
  theme_minimal()

ggsave("summary_plot.png", plot = p, width = 7, height = 5, dpi = 300)

# The console summary and summary_plot.png are the main outputs.
