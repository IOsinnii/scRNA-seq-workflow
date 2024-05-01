# Script to set up project directories and create a README.md file
# Upon the creation of a new project, before doing anything else run this.
getwd()
# Create directories if they do not exist
if (!dir.exists("input")) dir.create("input")
if (!dir.exists("output")) dir.create("output")
if (!dir.exists("R")) dir.create("R")
if (!dir.exists("functions")) dir.create("functions")

# Create and write to README.md file
readme_path <- file.path(getwd(), "README.md")
readme_content <- c(
  "# Project Title",
  "A brief description of the project.",
  "## Input",
  "Description of the input folder's contents.",
  "## Output",
  "Description of the output folder's contents.",
  "## R",
  "Description of the R scripts and their purposes."
)

# Write the content to README.md
writeLines(readme_content, readme_path)

# Alternative
#install.packages('ProjectTemplate')
# library('ProjectTemplate')
# create.project('my-project')
# setwd('my-project')
# load.project()

