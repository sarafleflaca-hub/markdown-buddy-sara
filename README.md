# Synthetic Retail Order Analysis

AI Assistance Declaration: I used ChatGPT (GPT-6, accessed November 11, 2026) for documentation planning, Markdown organization, and wording suggestions. Prompts used are listed in AI_Appendix.md. I will verify the Markdown and R code by reviewing the files and previewing/knitting them in RStudio or Posit Cloud. All final calculations and any interpretation of results must be checked by me. I am responsible for the accuracy and originality of this work.

## Overview
This project uses a **synthetic dataset** to demonstrate a small, reproducible R data-analysis workflow. The project explores how simulated order values vary across three shopping channels: online, in-store, and pickup.

The project is designed for learning and documentation practice. It does not use real customer, employee, or personal information.

## Project Files
- `analysis.R` — imports the synthetic data, checks its structure, and creates summary tables and a basic chart.
- `documentation.Rmd` — explains the analysis script, its inputs, outputs, and workflow.
- `README.md` — project overview and instructions.

## Dataset
The example dataset is generated within the R script, so no external or private data file is required.

Main fields:
- `channel`: synthetic shopping channel (Online, In-store, or Pickup).
- `order_value`: simulated order value in arbitrary currency units.
- `items`: number of items in a simulated order.

## Requirements
- R (version 4.2 or later recommended)
- `ggplot2` for the visualization

## Installation
Install the required package from the R console:

```r
install.packages("ggplot2")
```

Clone or download this repository, then open the project folder in RStudio.

## Example Usage
Run the script from the project directory:

```r
source("analysis.R")
```

The script creates a summary in the R console and saves a chart in the project folder. Review the script comments before changing the example data or analysis steps.

## Analysis Steps
- Generate 60 synthetic order records.
- Inspect the data and check the variables.
- Calculate the mean order value for each channel.
- Compare the distribution of order values with a boxplot.

## Outputs
- A table of mean simulated order value by shopping channel.
- `summary_plot.png`, showing the distribution of order values by channel.

## Reproducibility and Limitations
The data are synthetic and intended only for practice. The example illustrates a basic workflow; it should not be used to make real operational or financial decisions. The script sets a random seed so the generated example data can be reproduced.

## License
This educational example is provided for learning purposes. You may reuse and adapt the code with attribution.

## AI Assistance Disclosure
I used ChatGPT (GPT-6; November 11, 2026) to brainstorm README sections, suggest clearer wording, and review Markdown organization. The prompts and a summary of the assistance are recorded in `AI_Appendix.md`. I reviewed the generated material and included project-specific details, limitations, and file descriptions. Before submission, I will preview the README and knit the R Markdown file in RStudio or Posit Cloud. AI assistance is disclosed rather than presented as independent work.
