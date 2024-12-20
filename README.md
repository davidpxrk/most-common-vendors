# Canadian grocery stores; what vendors hold the most products?

## Overview

This repository contains all the files required to build the report, **Canadian grocery stores; what vendors hold the most products**. The report analyzes the grocery data of Canadian grocery stores gathered by Jacob Filipp, hosted publicly by the Project Hammer.

Due to the large size of the raw data, the SQL dataset manually be downloaded here and placed into /scripts folder.

Source: https://jacobfilipp.com/hammer/

## File Structure

The repo is structured as:

-   `data/raw_data` contains the raw data as obtained from Project Hammer.
-   `data/analysis_data` contains the cleaned dataset that was constructed using SQL.
-   `sketch` contains the relevant sketches
-   `paper` contains the files used to generate the paper, including the Quarto document and reference bibliography file, as well as the PDF of the paper. 
-   `scripts` contains the R scripts used to simulate, download and clean data.

## Reproducing the Tables and Graphs
1. Download the raw data from the link above (https://jacobfilipp.com/hammer/) and place it in scripts folder.
2. Clone this repository onto your computer
3. Clean the data by running scripts/01-data_cleaning.SQL
4. Run paper/paper.qmd to run the R Code for all the plots and tables.

## Statement on LLM usage

LLM and GPTs were NOT used in the making of this paper.
