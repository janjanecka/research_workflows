---
title: "Week 1 — Where Did My File Go?"
author: "Research Workflows"
output: html_document
---

# Demo: Understanding Working Directories in R

One of the most common problems new R users encounter is not knowing **where files are being saved or loaded from**.

This demo will help you understand:

- the **working directory**
- how R finds files
- how to organize project folders
- why relative paths are useful

---

# Setting the Stage

Create a new R script file and save it in the `scripts` folder.

Name the script something like:

```
week01_working_directory_demo.R
```

At the top of the script, add a title comment such as:

```r
# Week 01 Working Directory Demo Script
```

Add all code you run during this demo to the script.

For each command, include a comment above it explaining what the code is doing.

---

# Part 1 — Check Your Working Directory

In the R console, run:

```r
getwd()
```

This command prints the **working directory**, which is the folder where R is currently operating.

Look at the **Files pane in RStudio** and confirm that it matches the directory shown.

## Discussion Question

Where is your project located on your computer?

---

# Part 2 — Create a File

Run the following command:

```r
write.csv(mtcars, "test_output.csv")
```

Now check the **Files pane in RStudio**.

## Question

Where did the file `test_output.csv` appear?

It should be saved directly in your **project folder**.

---

# Part 3 — Save Files in Organized Folders

Good research projects organize files into folders such as:

```
data/
scripts/
figures/
docs/
```

Using the **Files pane** in the lower-right panel of RStudio, navigate to:

```
demos/week01_working_directory_demo/
```

Create the following folders if they do not already exist:

- `data`
- `scripts`
- `figures`
- `docs`

Now define file paths for the `data` and `figures` folders:

```r
data_dir <- "demos/week01_working_directory_demo/data"
dir.create(data_dir, showWarnings = FALSE, recursive = TRUE)

fig_dir <- "demos/week01_working_directory_demo/figures"
dir.create(fig_dir, showWarnings = FALSE, recursive = TRUE)
```

Now run:

```r
write.csv(mtcars, file.path(data_dir, "mtcars.csv"))
```

Look inside the **data** folder.

You should now see:

```
data/mtcars.csv
```

This is an example of using a **relative path**.

It also demonstrates the usefulness of **defining file paths as variables**.

---

# Part 4 — Explore Files with R

You can also inspect folders directly from R.

List all files in the project directory:

```r
list.files()
```

List files inside the data folder:

```r
list.files(data_dir)
```

---

# Reflection Questions

1. What directory is your R project using as the working directory?
2. Where was `test_output.csv` initially saved?
3. Why is it better to create a `data` directory for an analysis and define the path as an object?

For example, why is this approach better?

```r
file.path(data_dir, "myfile.csv")
```

instead of using a full path like this:

```
/Users/janjanecka/projects/research_workflows/demos/week01_working_directory_demo/data/myfile.csv
```

---

# Key Takeaway

Using **RStudio Projects + relative paths** helps ensure that your code works on any computer.

If someone else downloads your project folder, the analysis should still run without needing to rewrite file paths.

By defining a variable for each file path, you only need to update the path in one place if your project structure changes.

This is a key principle of **reproducible research**.
