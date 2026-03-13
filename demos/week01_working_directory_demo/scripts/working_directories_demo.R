#Title: Week 01 Working Directory Demo Script

# show working directory
getwd()

# creates file
write.csv(mtcars, "test_output.csv")

# define the file path to data/ and figures/
data_dir <- "demos/week01_working_directory_demo/data"
dir.create(data_dir, showWarnings = FALSE, recursive = TRUE)

fig_dir <- "demos/week01_working_directory_demo/figures"
dir.create(fig_dir, showWarnings = FALSE, recursive = TRUE)

# now rewrite the file in correct data dorectory
write.csv(mtcars, file.path(data_dir, "mtcars.csv"))

#List all files in the project directory:
list.files()

#List files inside the this demos data folder:
list.files(data_dir)
