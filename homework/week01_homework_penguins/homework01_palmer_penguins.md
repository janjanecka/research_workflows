# Homework 1 — Reproducible Data Analysis in R: Palmer Penguins
**Graduate Research Workflows**

Estimated time: ~60–90 minutes

---

## Homework Goal

This homework extends the in-class iris exercise using a new dataset: **Palmer Penguins**.

You will continue practicing a reproducible workflow by:

- working inside your **main course repository**
- creating a new weekly homework folder
- writing and saving an R script
- generating figures
- answering questions in a Markdown file
- committing and pushing your work to GitHub

Submit your work by **pushing it to your course repository**.

---

## Learning Objectives

By the end of this homework you should be able to:

- install and load an R package
- inspect a new dataset
- create and interpret basic plots
- save a figure to a project folder
- document answers in Markdown
- commit and push completed work to GitHub

---

## Where to Do This Homework

Open your main course R Project and create a new folder for this homework:

```text
homework01_penguins/
```

Inside that folder create:

```text
homework01_penguins/
│
├── README.md
├── scripts/
├── figures/
├── answers/
└── data/
```

---

## Files You Must Submit

By the end of the assignment your repository should contain:

```text
homework01_penguins/
│
├── scripts/
│   └── penguins_exploration.R
│
├── figures/
│   └── penguin_scatterplot.png
│
└── answers/
    └── homework01_penguins_YOURNAME.md
```

---

# Step 1 — Create the Homework Folder

Inside your course repository, create the folder:

```text
homework01_penguins
```

Then create the subfolders:

```text
scripts
figures
answers
data
```

---

# Step 2 — Create Your Analysis Script

Inside the `scripts` folder create a new R script named:

```text
scripts/penguins_exploration.R
```

Add this header at the top:

```r
############################################
# Homework 1 — Palmer Penguins Exploration
# Name: YOUR NAME
# Course: BIOL 696
############################################
```

---

# Step 3 — Install and Load the Dataset Package

The Palmer Penguins dataset is available in the `palmerpenguins` package.

Install it if needed:

```r
install.packages("palmerpenguins")
```

Load the package:

```r
library(palmerpenguins)
```

Load the dataset:

```r
data(penguins)
```

Preview the data:

```r
head(penguins)
```

---

# Step 4 — Inspect the Dataset

Run the following commands:

```r
str(penguins)
dim(penguins)
names(penguins)
summary(penguins)
```

---

# Step 5 — Answer Basic Data Questions

In your answers file, answer the following:

1. How many observations are in the dataset?
2. How many variables are in the dataset?
3. What species are included?
4. Which variables are numeric?
5. Do you notice any missing values?

---

# Step 6 — Create a Scatter Plot

Create a scatter plot of:

- **bill length** on the x-axis
- **flipper length** on the y-axis

Use this code as a starting point:

```r
plot(
  penguins$bill_length_mm,
  penguins$flipper_length_mm,
  xlab = "Bill Length (mm)",
  ylab = "Flipper Length (mm)",
  main = "Bill Length vs Flipper Length"
)
```

---

# Step 7 — Color Points by Species

Now create a second version colored by species.

```r
plot(
  penguins$bill_length_mm,
  penguins$flipper_length_mm,
  col = penguins$species,
  pch = 19,
  xlab = "Bill Length (mm)",
  ylab = "Flipper Length (mm)",
  main = "Bill Length vs Flipper Length by Species"
)
```

### Questions

Answer these in your answers file:

1. Do the species appear to form clusters?
2. Which species appears most distinct?
3. Do you notice any overlap among species?

---

# Step 8 — Create a Boxplot

Create a boxplot comparing body mass across species.

```r
boxplot(body_mass_g ~ species, data = penguins)
```

### Questions

Answer these in your answers file:

1. Which species appears heaviest on average?
2. Which species appears lightest?
3. Which species seems to have the greatest variation in body mass?

---

# Step 9 — Save a Figure

Save your colored scatter plot to the `figures` folder.

Before saving the plot, make sure the folder exists:

```r
dir.create("homework01_penguins/figures", showWarnings = FALSE, recursive = TRUE)
```

Then save the figure:

```r
png("homework01_penguins/figures/penguin_scatterplot.png")

plot(
  penguins$bill_length_mm,
  penguins$flipper_length_mm,
  col = penguins$species,
  pch = 19,
  xlab = "Bill Length (mm)",
  ylab = "Flipper Length (mm)",
  main = "Bill Length vs Flipper Length by Species"
)

dev.off()
```

Confirm the file appears in:

```text
homework01_penguins/figures/penguin_scatterplot.png
```

---

# Step 10 — Write Your Answers in Markdown

Inside the `answers` folder create:

```text
answers/homework01_penguins_YOURNAME.md
```

Your file should include:

- your name
- short written answers to all questions
- a short paragraph interpreting the plots
- the figure inserted into the Markdown file

Example structure:

```markdown
# Homework 1 — Palmer Penguins
Student: YOUR NAME

## Dataset Overview

[Write your answers here]

## Scatter Plot Interpretation

[Write your answers here]

## Boxplot Interpretation

[Write your answers here]

## Figure

![Penguin Scatter Plot](../figures/penguin_scatterplot.png)
```

---

# Step 11 — Final Reflection

At the end of your answers file, write a short paragraph answering:

1. Which penguin species appears most different from the others?
2. Which two species appear most similar?
3. What additional analysis would you perform next?

---

# Step 12 — Commit and Push Your Work

Open the Terminal in RStudio and run:

```bash
git status
git add .
git commit -m "Completed Homework 1 Palmer Penguins analysis"
git push
```

---

# Step 13 — Submission

To receive credit:

- push your completed homework to your course repository on GitHub
- make sure the instructor can access your repository
- no separate upload is required unless instructed otherwise

---

## Grading Checklist

Your homework will be graded based on whether your repository contains:

- `scripts/penguins_exploration.R`
- `figures/penguin_scatterplot.png`
- `answers/homework01_penguins_YOURNAME.md`

You will also be graded on:

- completion of all questions
- correct use of project structure
- successful commit and push to GitHub
- clear written interpretation of results

---

## Optional Challenge

Add one additional plot of your choice using the penguins dataset.

Ideas:

- bill depth by species
- flipper length by island
- body mass vs bill length

Save the additional figure and describe what it shows.

---

## Note

The Palmer Penguins dataset contains some missing values. If you see warnings or missing points in plots, that is normal for this dataset.
