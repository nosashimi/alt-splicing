QB project    
Bash scripts:   
   
**Create a fastq file from a sam file:**   
tail -n +16 GSM627337_100429_600CAAAXX_CG10279_1_s_6_sequence.txt_unique.sam | \                 
awk '{print "@"$1"\n"$10"\n+\n"$11}' > sample.fastq      
    
**Download reference genome:**     
Download from: https://www.ncbi.nlm.nih.gov/datasets/genome/GCF_000001215.4/   
   
**Prepare the reference genome:**    
hisat2-build GCF_000001215.4_Release_6_plus_ISO1_MT_genomic.fna drosophila    
    
**Alignment:**     
hisat2 -p 4 -x ../reference_genome/drosophila -U sample.fastq > realign.sam      
     
**Sort:**      
samtools sort -o realign.bam realign.sam      
    
**Index:**     
samtools index realign.bam      
samtools idxstats realign.bam > realign.idxstats       
    
**Install HTseq:**      
pip3 install HTSeq      
     
**Exon count:**     
htseq-count -s no -a 10 realign.sam ../reference_genome/ncbi_dataset/genomic.gtf > sample.count      
    
**Error:**     
[Error processing GFF file (line 419004 of file ../reference_genome/ncbi_dataset/genomic.gtf):]       
     
Run following code:       
    
awk 'NR==419004' ../reference_genome/ncbi_dataset/genomic.gtf | cut -f 7      
    
Get:      
    
?     
    
Solution: remove this line     
    
sed '419004d' ../reference_genome/ncbi_dataset/genomic.gtf > ../reference_genome/ncbi_dataset/genomic_editted.gtf      
     
Error at 419017 line:    
sed -i '' '419017d' ../reference_genome/ncbi_dataset/genomic_editted.gtf      
     
Another error in another line.      
     
Try deleting all lines with undefined strandness.    
    
Run:      
     
awk '$7 != "?"' ../reference_genome/ncbi_dataset/genomic.gtf > ../reference_genome/ncbi_dataset/genomic_editted.gtf    
    
Then:     
    
htseq-count -s no -a 10 realign.sam ../reference_genome/ncbi_dataset/genomic_editted.gtf > sample.count    
     
It takes a long time to run.




