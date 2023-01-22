# Correlation visualizations

cor_graph <- cor_data %>% ggplot(aes(category, FRAUD_FLAG)) +
  geom_col()