# The genetic legacy of the first successful reintroduction of a mammal to Britain: founder events and reinforcements in Scotland’s beaver population

This repository contains the scripts used to analyse the ddRAD data within the publication: 

Taylor et al, In prep, *The genetic legacy of the first successful reintroduction of a mammal to Britain: founder events and reinforcements in Scotland’s beaver population*

## 0. SNP calling

Reference aligned SNP calling was carried out using the the pipelines within the folder [Snakemake](https://github.com/RZSS-WildGenes/Scottish_Beaver_Reinforcement/tree/main/Snakemake). These were written in Snakemake following the pipeline origianally published in [Dicks et al, 2023](https://doi.org/10.1111/eva.13515).

  [1. mapping](https://github.com/RZSS-WildGenes/Scottish_Beaver_Reinforcement/tree/main/Snakemake/1.mapping): Performs BWA mapping, sorting and generation of mapping summary statistics. 
  
  [2.gstacks](https://github.com/RZSS-WildGenes/Scottish_Beaver_Reinforcement/tree/main/Snakemake/2.gstacks): Performs SNP calling using STACKS v2.52 and outputs all SNPs without filtering. 
  
## 1. SNP quality control and filtering
- [Workflow1_SNP_QC.rmd](https://github.com/RZSS-WildGenes/Scottish_Beaver_Reinforcement/blob/main/Workflow1_SNP_QC.rmd)

The included CONDA environment [conda_snp_processing.yml](https://github.com/RZSS-WildGenes/Scottish_Beaver_Reinforcement/blob/main/conda_snp_processing.yml) enables replication of the packages used for SNP QC and filtering. 

## 2 - 4 Population genetic analyses

- [Workflow2_GENETIC_DIVERSITY_PCA.rmd](https://github.com/RZSS-WildGenes/Scottish_Beaver_Reinforcement/blob/main/Workflow2_GENETIC_DIVERSITY_PCA.rmd)  
- [Workflow3_STRUCTURE.rmd](https://github.com/RZSS-WildGenes/Scottish_Beaver_Reinforcement/tree/main#:~:text=Workflow3_STRUCTURE.rmd)  
- [Workflow4_KINSHIP.rmd](https://github.com/RZSS-WildGenes/Scottish_Beaver_Reinforcement/tree/main#:~:text=Workflow4_KINSHIP.rmd)  

These workflows include all the commands used to analyse the filtered SNPs.







