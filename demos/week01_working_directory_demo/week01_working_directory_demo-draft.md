---
title: "Week 1 — Where Did My File Go?"
author: "Research Workflows"
output: html_document
---
# Demo: Understanding Working Directories in R

One of the most common problems new R users encounter is not knowing **where files are being saved or loaded from**.

This exercise will help you understand:

- the **working directory**
- how R finds files
- how to organize project folders
---
# Setting the stage

Create an R Script filea and save to new folder 'scripts'

At the top title it

```markdown
#Title: Week 01 Working Directory Demo Script
```

Add all code you execute in the console to this script

In the line above the command add # and them comments on
what the code is doing

---

# Part 1 — Check Your Working Directory

In the R console run:

```r
getwd()
```

This command prints the **working directory**, which is the folder where R is currently operating.

Look at the **Files pane in RStudio** and confirm that it matches the directory shown.

**Discussion question**

Where is your project located on your computer?

---

# Part 2 — Create a File

Run the following command:

```r
write.csv(mtcars, "test_output.csv")
```

Now check the **Files pane in RStudio**.

**Question**

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

create thes folders by using the lower right panel to go to
the 'week01_working_directory_demo' and them click add 
fodler icon. Add the create the three above directories

define the file path to data/ and figures/

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

Look inside the **data folder**.

You should now see:

```
data/mtcars.csv
```

This is an example of using a **relative path**.

It also illustrated **file path definitions**

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
2. Where did `test_output.csv` initially get saved?
3. Why is it better to create a data directory for each analysis
   and them create define the path as an object?

So this
```
file.path(data_dir, "myfile.csv")
```

instead of full paths like:

```
/Users/janjanecka/projects/research_workflows/demos/week01_working_directory_demo/datamyfile.csv
```

---

# Key Takeaway

Using **RStudio Projects + relative paths** ensures that your code works on any computer.

If someone else downloads your project folder, the analysis will still run.

By declaring a variable as each filepath you only need to update it once

This is a key principle of **reproducible research**.
