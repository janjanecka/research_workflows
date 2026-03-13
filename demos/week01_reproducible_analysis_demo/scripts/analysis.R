# ================================
# Reproducible Research Demo
# BIOL 696 Graduate Research Course
# Dr. Jan E Janecka
# ================================

# Load packages
library(tidyverse)

# When running as a demo, clear environment
# Comment out if not desired
rm(list = ls())

# ----------------
# Define paths to directories
# ----------------

data_dir <- "demos/week01_reproducible_analysis_demo/data"
dir.create(data_dir, showWarnings = FALSE, recursive = TRUE)

fig_dir <- "demos/week01_reproducible_analysis_demo/figures"
dir.create(fig_dir, showWarnings = FALSE, recursive = TRUE)

docs_dir <- "demos/week01_reproducible_analysis_demo/docs"
dir.create(docs_dir, showWarnings = FALSE, recursive = TRUE)

scripts_dir <- "demos/week01_reproducible_analysis_demo/scripts"
dir.create(scripts_dir, showWarnings = FALSE, recursive = TRUE)

# ----------------
# Load data
# ----------------

bird_data <- read.csv(file.path(data_dir, "bird_traits.csv"))

# Inspect data
head(bird_data)
summary(bird_data)

# ----------------
# Summary statistics
# ----------------

summary_stats <- bird_data %>%
  group_by(species) %>%
  summarize(
    mean_mass = mean(body_mass_g, na.rm = TRUE),
    mean_wing = mean(wing_length_mm, na.rm = TRUE),
    n = n()
  )

print(summary_stats)

# ----------------
# Visualization
# ----------------

body_mass_plot <- ggplot(bird_data, aes(x = species, y = body_mass_g)) +
  geom_boxplot(fill = "steelblue") +
  theme_minimal() +
  labs(
    title = "Body Mass Variation Across Bird Species",
    x = "Species",
    y = "Body Mass (g)"
  )

print(body_mass_plot)

# Save figure
ggsave(
  filename = file.path(fig_dir, "body_mass_plot.png"),
  plot = body_mass_plot,
  width = 6,
  height = 4
)

# ----------------
# End of script
# ----------------

# ----------------
# Illustration of Reproducibility
# ----------------

# This section demonstrates how reproducible scripts regenerate results.
# Follow these steps in the R console (do NOT uncomment these lines in the script).

# Step 1 — Delete the figure
# Copy and paste the command below into the console to remove the saved plot.

# file.remove(file.path(fig_dir, "body_mass_plot.png"))

# Step 2 — Re-run the analysis script
# Copy and paste the command below into the console.

# source("demos/week01_reproducible_analysis_demo/scripts/reproducible_demo.R")

# After running the script again, the figure will be recreated automatically.