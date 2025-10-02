# Comparative Analysis of Alternative Splicing across Human Tissues Using GTEx RNA-Seq
## Description
Alternative splicing during mRNA maturation is essential for major biological processes in eukaryotes such as cellular differentiation and proper gene regulation. Here, using RNA-Seq data from the Genotype-Tissue Expression (GTEx) Consortium, we aim to characterize differential alternative splicing events - including exon skipping, 5′ and 3′ alternative splice-site usage - across tissues with the help of LeafCutter and potentially other methods like Cufflinks2. We hope to eventually gain a deeper understanding of how cell fate in different tissues is dictated by alternative splicing, and the relationship between alternative splicing and diseases.
## Example published figure
![](https://davidaknowles.github.io/leafcutter/articles/cluster_plot_example.png)
## Datasets
[The GTEx Analysis V10 RNA-Seq](https://www.gtexportal.org/home/downloads/adult-gtex/bulk_tissue_expression#bulk_tissue_expression-gtex_analysis_v10-rna-seq)   
[ALS RNA-Seq](https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE234297)
## Software
[LeafCutter 0.2.9](https://davidaknowles.github.io/leafcutter/index.html)  
[Cufflinks](https://github.com/cole-trapnell-lab/cufflinks)
## Proposed goals
1. Running [the sample file](https://drive.google.com/open?id=0B_dRjzD1If9mR0Z6Um5LZTYxVjA) on the LeafCutter website to familiarize ourselves with the software and try to reproduce the example figure.
2. Extending the pipeline to GTEx RNA-Seq data, focusing on crucial genes.
3. Exploring the relationship between alternative splicing and specific diseases.
## References
1. Li, Y.I. *et al*. Annotation-free quantification of RNA splicing using LeafCutter. *Nat Genet* **50**, 151–158 (2018). https://doi.org/10.1038/s41588-017-0004-9
2. Wong, C.W. *et al*. A blood transcriptomic resource for ALS highlights disease-associated signatures and alternative splicing events. Preprint at https://www.medrxiv.org/content/10.1101/2025.07.28.25332310v1 (2025).
