if (!require("BiocManager", quietly = TRUE))
  install.packages("BiocManager")

BiocManager::install("DEXSeq")
BiocManager::install("pasilla")

# Loading and inspecting the example data
data(pasillaDEXSeqDataSet, package="pasilla")
# Annotation for each column
colData(dxd)
# Access the first 5 rows of the counts data
head(counts(dxd), 5)
  # Each row represent an exon or part of an exon of the given gene (exon ID), and the first 7 columns correspond to the number of reads
  # mapped the given exon ID from each sample, while the last 7 columns are the sum of the counts mapped to the rest of the exons from
  # the same gene on each sample.
# Details of the first 3 counting bins
head(rowRanges(dxd), 3)

# Normalization
dxd = estimateSizeFactors(dxd)

# Dispersion estimation (to distinguish noise from real effects on exon usage due to the different conditions)
dxd = estimateDispersions(dxd)
# Plot the Fit Diagnostics
plotDispEsts(dxd)

# Testing for differential exon usage
dxd = testForDEU(dxd)
# Estimate relative exon usage fold changes
dxd = estimateExonFoldChanges(dxd, fitExpToVar="condition")
# Summarize results
dxr1 = DEXSeqResults(dxd)
dxr1
# Description of each column
mcols(dxr1)$description
# Number of exonic regions are significant with FDR < 10%
table (dxr1$padj < 0.1)
# Number of genes that are affected
table (tapply(dxr1$padj < 0.1, dxr1$groupID, any))
# MA plot (logarithm of fold change versus average normalized count per exon)
plotMA(dxr1, cex=0.8)

# Accounting for covariate
formulaFullModel    =  ~ sample + exon + type:exon + condition:exon
formulaReducedModel =  ~ sample + exon + type:exon
dxd = estimateDispersions(dxd, formula = formulaFullModel)
plotDispEsts(dxd)
dxd = testForDEU(dxd, 
                  reducedModel = formulaReducedModel, 
                  fullModel = formulaFullModel)
dxr2 = DEXSeqResults(dxd)
table(dxr2$padj < 0.1)
table( before = dxr1$padj < 0.1, now = dxr2$padj < 0.1 )

# Visualization
wh = (dxr2$groupID=="FBgn0010909")
stopifnot(sum(dxr2$padj[wh] < formals(plotDEXSeq)$FDR)==1)
# Overall change in gene removed
plotDEXSeq(dxr2, "FBgn0010909", displayTranscripts=TRUE, expression=FALSE, splicing=TRUE,
            legend=TRUE, cex.axis=1.2, cex=1.3, lwd=2)
# HTML report generator
DEXSeqHTML(dxr2, FDR=0.1, color=c("#FF000080", "#0000FF80"))
