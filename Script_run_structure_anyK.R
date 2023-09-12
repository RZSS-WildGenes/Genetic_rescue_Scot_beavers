#! /usr/bin/Rscript --vanilla --default-packages=utils

## Run this script from the command line defining three arguments: 
## First, the value of K
## Second, the working directory for the input and output files
## Thirdly, the input structure file


args = commandArgs(trailingOnly=TRUE)

# test if there is at least one argument: if not, return an error
if (length(args)==0) {
  stop("At least one argument must be supplied (input file).n", call.=FALSE)
} else if (length(args)==1) {
  # default output file
  args[2] = "out.txt"
}


library(ParallelStructure)
library(data.table)
library(dplyr)
library(tidyr)
library(stringr)

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
# 1. Run ParallelStructure                          #
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#



options(scipen=999)

setwd(args[2])

infile <- args[3]
outpath <- "output_files/"

# check if the output folder exists
dir.create(file.path(".", outpath), showWarnings = FALSE)

#~~ Specify in and out files for structure

job=args[1]



# Genotypes

gen <- fread(infile, header = F)

#~~ file path to structure

STR_path='/mnt/profiles/kdicks/tools/structure/'


#~~ Run Parallel Structure

ParallelStructure::parallel_structure(structure_path=STR_path, 
                                      joblist=paste0("stru_jobs_",job,".txt"), 
                                      n_cpu=5,
                                      infile=infile, 
                                      outpath= outpath, 
                                      numinds = nrow(gen),
                                      numloci=((ncol(gen)-2)/2), 
                                      popdata = 1, 
                                      noadmix = 0,
                                      popflag = 0, 
                                      usepopinfo = 0, 
                                      printqhat=1, 
                                      plot_output=0, 
                                      onerowperind=1 #  0 is 2 rows per individual; 1 is 1 row per ind
)












