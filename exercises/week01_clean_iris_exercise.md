# Week 1 --- Reproducible Data Analysis in R

**Graduate Research Workflows**

Estimated time: \~60--75 minutes

------------------------------------------------------------------------

## Learning Objectives

By the end of this exercise you should be able to:

-   Create a GitHub repository for a research project
-   Clone the repository into **RStudio as an R Project**
-   Organize a research project with folders
-   Explore a dataset in R
-   Generate simple plots
-   Save figures to your project
-   Commit and push your work to GitHub

Note: Go thr

This mirrors how real computational research projects are organized.

------------------------------------------------------------------------

# Expected Project Structure

By the end of this exercise your project should look like this:

    your_name_grad_research_workflows/
    | 
    ├── your_name_grad_research_workflows.Rproj
    ├── README.md
    |
    ├── week01_iris_workflow/
    └──
      │
      ├── README.md
      ├── scripts/
      │   └── iris_exploration.R
      │
      ├── figures/
      │   └── petal_length_by_species.png
      │
      ├── answers/
      │   └── exercise1_solutions_your_name.md
      │
      └── data/

------------------------------------------------------------------------

# Step 1 --- Create a GitHub Repository

1.  Log in to **GitHub**
2.  Click **New Repository**

Repository name:

    your_name_grad_research_workflows

Initialize with:

-   ✔ Add a README file

Click **Create Repository**.

------------------------------------------------------------------------

# Step 2 --- Copy the Repository URL

On the repository page click **Code** and copy the **HTTPS URL**.

Example:

    https://github.com/yourusername/your_name_grad_research_workflows

------------------------------------------------------------------------

# Step 3 --- Create an R Project Connected to GitHub

Open **RStudio**.

Go to:

    File → New Project

Choose:

    Version Control

Then select:

    Git

Paste your repository URL and choose a folder on your computer.

Click **Create Project**.

RStudio will:

-   Clone the repository
-   Create an R Project
-   Connect the project to Git

You should now see a **Git tab in RStudio**.

------------------------------------------------------------------------

# Step 4 --- Create Project Folders

Create the following folders inside your project:

    scripts
    figures
    answers
    data

------------------------------------------------------------------------

# Step 5 — Add Your Name to the Main README 

Open the file `README.md` in the main repository folder. 

Add the following information at the top of the file: 

```markdown
# Graduate Research Workflows 

Student: YOUR NAME 
Course: BIOL 696  
Instructor: Dr. Jan Janecka  
Semester: Spring 2026

-----------------------------------------------------------------------

# Step 5 --- Create an Analysis Script

Inside the **scripts** folder create a new R script.

You will save all the code you execute n this file.

Mask out text that is not R code (sich as comments 
or explanations) with # at beginning of lines.

Save it as:

    scripts/iris_exploration.R

Add this header at the top of the script:

``` r
############################################
# Week 1 Iris Data Exploration
# Name: YOUR NAME
# Course: Research Workflows
############################################
```
Below the header, add all code that you run for this exercise.

------------------------------------------------------------------------

# Step 6 --- Load the Iris Dataset

The **iris dataset** is included in base R.

``` r
data(iris)
```

Preview the dataset:

``` r
head(iris)
```

### Questions

1.  How many columns are in the dataset?
2.  What measurements are recorded?

------------------------------------------------------------------------

# Step 7 --- Inspect the Dataset

Run the following commands:

``` r
str(iris)
dim(iris)
names(iris)
```

### Questions

1.  How many observations are there?
2.  Which column identifies the species?

------------------------------------------------------------------------

# Step 8 --- Summary Statistics

Generate summary statistics:

``` r
summary(iris)
```

### Questions

1.  Which variable appears to vary the most?
2.  Which species has the longest petals?

------------------------------------------------------------------------

# Step 9 --- Create a Scatter Plot

``` r
plot(iris$Sepal.Length, iris$Petal.Length)
```

### Questions

1.  Do longer sepals correspond to longer petals?
2.  Do you notice clusters of points?

------------------------------------------------------------------------

# Step 10 --- Color Points by Species

``` r
plot(
  iris$Sepal.Length,
  iris$Petal.Length,
  col = iris$Species,
  pch = 19,
  xlab = "Sepal Length",
  ylab = "Petal Length",
  main = "Sepal Length vs Petal Length"
)
```

### Questions

1.  Do the species separate into clusters?
2.  Which species appears most distinct?

------------------------------------------------------------------------

# Step 11 --- Compare Species with a Boxplot

``` r
boxplot(Petal.Length ~ Species, data = iris)
```

### Questions

1.  Which species has the smallest petals?
2.  Which species shows the greatest variation?

------------------------------------------------------------------------

# Step 12 --- Save a Figure

Save the boxplot to the **figures folder**.

``` r
png("figures/petal_length_by_species.png")

boxplot(Petal.Length ~ Species, data = iris)

dev.off()
```

Confirm the file appears in:

    figures/petal_length_by_species.png

------------------------------------------------------------------------

# Step 13 --- Write Your Answers

Create a Markdown file inside the **answers** folder.

    answers/exercise1_solutions_YOURNAME.md

Write short answers to the questions from the exercise.

You may include your figure:

``` markdown
## Petal Length by Species

![Petal Length Plot](../figures/petal_length_by_species.png)
```

------------------------------------------------------------------------

# Step 14 --- Commit Your Work

Open the **Terminal in RStudio** or use the Git tab.

Check repository status:

``` bash
git status
```

Add files to the commit:

``` bash
git add .
```

Create the commit:

``` bash
git commit -m "Completed Week 1 iris exploration exercise"
```

------------------------------------------------------------------------

# Step 15 --- Push Your Work to GitHub

Push your commit to GitHub:

``` bash
git push
```

Refresh your repository page on GitHub to confirm the files appear.

------------------------------------------------------------------------

# Step 16 --- Submit Exercise By Sharing Your Repository

To receive credit:

-   Add the instructor as a **collaborator** in your repository
    settings.

------------------------------------------------------------------------

# Final Files

Your repository should contain:

    scripts/iris_exploration.R
    figures/petal_length_by_species.png
    answers/exercise1_solutions_YOURNAME.md

------------------------------------------------------------------------

# What You Should Observe

Most students find:

-   **Setosa separates clearly from the other species**
-   **Versicolor and Virginica partially overlap**

These patterns lead naturally to future methods such as:

-   PCA
-   clustering
-   classification
-   machine learning
