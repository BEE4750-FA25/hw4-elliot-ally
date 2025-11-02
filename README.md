[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-22041afd0340ce965d47ae6ef1cefeee28c7c493a6346c4f15d667ab976d596c.svg)](https://classroom.github.com/a/Jai-yBlm)
# Homework 4: Linear Programming and Capacity Expansion

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the repository for Homework 4 for [BEE 4750](https://viveks.me/environmental-systems-analysis), taught at [Cornell University](https://cornell.edu) in Fall 2025 by [Vivek Srikrishnan](https://viveks.me).

If enrolled in the class, a PDF of the completed notebook, **with all cells evaluated**, should be submitted to Gradescope *no later* than Thursday, November 06, 2025, at 9:00pm. 50% will be deducted for late submissions, which can be accepted up to 24 hours from the original deadline.

## Learning Objectives

After completing this lab, students will be able to:

* reason about the locations of solutions to linear programs;
* formulate a linear programming models from descriptions of decision problems;
* use `JuMP.jl` to solve linear programs;
* interpret the solution of a linear program and its shadow prices.

## Repository Overview

The repository consists of the following files:

- `hw04.ipynb`: Jupyter Notebook for the homework assignment. Students should create code or Markdown blocks as necessary to answer questions. **This is the only file you should need to edit.**
- `Project.toml`, `Manifest.toml`: Julia environment files. These should just work, but feel free to add other packages as needed using the `Pkg` package manager. **This is the only other file that you might end up making changes to, though you should do this using `Pkg`, not directly.**
- `hw04.qmd`: Source file for Jupyter notebook generation. You shouldn't need to or want to touch this; everything is in the `.ipynb` file.
- `LICENSE`: This material is licensed using the MIT license. You can ignore this for working on the problem set.
- `README.md`: This file. You shouldn't need to touch this.
- `.gitignore`: This tells `git` what files to ignore. You shouldn't need to touch this.
- `.github/`: This folder contains workflow files which generate a PDF from the notebook. Again, you shouldn't need to touch this.

## Dependencies

This notebook was written using Julia 1.10.4, and depends on the following packages:

- `JuMP.jl`
- `HiGHS.jl`
- `DataFrames.jl`
- `Plots.jl`
- `Measures.jl`
- `CSV.jl`

## Prerequisites

1. [Install Julia](https://julialang.org/downloads/) before beginning this lab. This notebook was developed with version 1.11.5, but any 1.11.x should work (there could be some issues with other versions, depending on what's changed).
2. If necessary, [install git](https://happygitwithr.com/install-git.html) and [create a GitHub account](https://github.com). 
3. [Clone the repository](https://docs.github.com/en/repositories/creating-and-managing-repositories/cloning-a-repository). I recommend doing this in a dedicated `BEE4750/` folder, which can also house homework assignment repositories and lecture notes. You can clone directly into the `BEE4750/` folder.   For Windows (or from another graphical interface), just create a `BEE4750` folder, then a `hw` folder inside of that, then clone into that folder. Or to clone into a `BEE4750/hw` folder, from a command prompt:
    ```bash
    cd BEE4750/
    mkdir hw
    cd hw/
    git clone https://github.com/BEE4750/hw04.git
    ```