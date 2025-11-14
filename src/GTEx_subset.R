if (!require("BiocManager", quietly = TRUE))
  install.packages("BiocManager")

BiocManager::install("DEXSeq", force = TRUE)
install.packages("arrow")

library(arrow)
library(dplyr)
library(DEXSeq)

ds <- open_dataset("./GTEx_Analysis_v10_RNASeQCv2.4.2_exon_reads.parquet")

all_cols <- names(ds)
subset_cols <- c("Description", all_cols[2:21])
df_subset <- ds %>%
  select(all_of(subset_cols)) %>%
  head(1000) %>%   # limit to first 1,000 rows (exons)
  collect()

count_matrix <- as.data.frame(df_subset)

sample_ids <- colnames(count_matrix)

sampleTable <- data.frame(
  sample_id = sample_ids[-1],
  condition = rep("test", length(sample_ids)-1)
)
rownames(sampleTable) <- sampleTable$sample_id

dxd_subset <- DEXSeqDataSetFromMatrix(
  countData = count_matrix,
  colData = sampleTable,
  design = ~ sample + exon + condition:exon
)

DEXSeqDataSetFromMatrix
