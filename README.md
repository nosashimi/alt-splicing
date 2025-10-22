# Comparative Analysis of Alternative Splicing across Human Tissues Using GTEx RNA-Seq
## Description
Alternative splicing during mRNA maturation is essential for major biological processes in eukaryotes such as cellular differentiation and proper gene regulation. Here, using RNA-Seq data from the Genotype-Tissue Expression (GTEx) Consortium, we aim to characterize differential alternative splicing events - including splice junctions (SJs) and intron retentions (IRs) - across tissues with the help of DEXSeq. By doing so, we hope to eventually gain a deeper understanding of how cell fate in different tissues is dictated by alternative splicing.  
## Example published figure
![](https://storage.googleapis.com/plos-corpus-prod/10.1371/journal.pone.0136653/1/pone.0136653.t002.PNG_L?X-Goog-Algorithm=GOOG4-RSA-SHA256&X-Goog-Credential=wombat-sa%40plos-prod.iam.gserviceaccount.com%2F20251022%2Fauto%2Fstorage%2Fgoog4_request&X-Goog-Date=20251022T164522Z&X-Goog-Expires=86400&X-Goog-SignedHeaders=host&X-Goog-Signature=dad94fe0675e845999b111eac70c5c28f899d2b822290a8a80ae6e476541acd9a2a67ae475063b22b1fe4148cbb91f1dd33bfa44844c7dd4c4e9c7302e35500233547a44d669bf10490ec53b2fe35c68b59123a2baa43a6a57b2b5580454de2f074cab5869eff87853e9d29168a227e2e06bda19a365602d757021d66dc614e6d918bb52313cf4745a6bbcc2219eb3302e39145a43d1b723081a9353d592691c9272ae03ae844ea7d1c34abb7d640ef4c80e651bbb31a9c76db15c5ef63bb0e8523b53a990e4b830a885d65e500a3f0a5c51218ba7eb94c09c047adc6745bc3d86cef7965a51bb2016f2ad5cff602c8aff8078a2aecd3a9b865ec178d60b9079)
![](https://storage.googleapis.com/plos-corpus-prod/10.1371/journal.pone.0136653/1/pone.0136653.g002.PNG_L?X-Goog-Algorithm=GOOG4-RSA-SHA256&X-Goog-Credential=wombat-sa%40plos-prod.iam.gserviceaccount.com%2F20251022%2Fauto%2Fstorage%2Fgoog4_request&X-Goog-Date=20251022T164559Z&X-Goog-Expires=86400&X-Goog-SignedHeaders=host&X-Goog-Signature=8967264caa8ae239373b7e4660d19925973b16a227bc71d74e405013c0a0a69a4d1958a4cceaa9dc447cea4de033982dc098eaa8ee7f2d3d9895b6642e1c8478a45ba9ed512b678795482e6ae6dcdbc6350f0f4621ab057f39c32debb8f2025feb80abc7ab3b8dd7ccf2cd9658ed2924cff9ae9caad5cf4cf7fa60d90d8ca87d4ec5c4731348265627b5facc19901e71bd6ec7e441b984cecdb4a444eb8b214640c1bcf7961d121d20e263a3d682289ae99a3cd3ee3e0b5b5ad7909377706afa1c5c39eadd8fe1c83598b626cf20e1580eacc7b3dbbe9e89807d26f2e5c3be39cee5be8edaa178c260a3cfe1374929eb86eb3650f989cc4c335b71cb06fc7771)  
## Datasets
[The GTEx Analysis V10 RNA-Seq](https://www.gtexportal.org/home/downloads/adult-gtex/bulk_tissue_expression#bulk_tissue_expression-gtex_analysis_v10-rna-seq)   
[*Drosophila* RNA Binding Protein RNAi RNA-Seq Studies GSE18508](https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE18508)
## Software
[DEXseq](https://bioconductor.org/packages/release/bioc/html/DEXSeq.html)  
Python  
R  
## Proposed goals
1. Processing GSE18508 RNA-seq data using DEXSeq to familiarize ourselves with the software and try to reproduce the example figure and table.
2. Extending the pipeline to GTEx RNA-Seq data, focusing on crucial genes.
3. Comparing DEXSeq with other alternative splicing analysis softwares.
## References
1. Li Y, Rao X, Mattox WW, Amos CI, Liu B (2015) RNA-Seq Analysis of Differential Splice Junction Usage and Intron Retentions by DEXSeq. *PLOS ONE* 10(9): e0136653. https://doi.org/10.1371/journal.pone.0136653
2. Anders S, Reyes A, Huber W. Detecting differential usage of exons from RNA-seq data. *Genome research*. 2012; 22(10):2008–17. doi: 10.1101/gr.133744.111 PMID: 22722343; PubMed Central PMCID: PMC3460195. 
