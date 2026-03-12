# ================================
# Reproducible Research Demo
# BIOL Graduate Research Course
# ================================

# Load packages
library(tidyverse)

# ----------------
# Load data
# ----------------

data <- read.csv("data/bird_traits.csv")

# Inspect data
head(data)
summary(data)

# ----------------
# Summary statistics
# ----------------

summary_stats <- data %>%
  group_by(species) %>%
  summarize(
    mean_mass = mean(body_mass_g),
    mean_wing = mean(wing_length_mm),
    n = n()
  )

print(summary_stats)

# ----------------
# Visualization
# ----------------

plot <- ggplot(data, aes(x = species, y = body_mass_g)) +
  geom_boxplot(fill = "steelblue") +
  theme_minimal() +
  labs(
    title = "Body Mass Variation Across Bird Species",
    x = "Species",
    y = "Body Mass (g)"
  )

print(plot)

# Save figure
ggsave("figures/body_mass_plot.png", width = 6, height = 4)

# ----------------
# End of script
# ----------------