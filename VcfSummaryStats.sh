# bcftools or samtool commands to calculate basic statistics about seqeuncing data from vcf files.

cd /scratch/PI/euan/common/udn/gateway/data/UDN676680/
ls 633357-UDN676680-P_H72KKBCXX-1-ID04.INDELs_Annotated.vcf

# INDEX FILE USING TABIX
tabix -p vcf 633357-UDN676680-P_H72KKBCXX-1-ID04.INDELs_Annotated.vcf.gz

# number of indels / snps
bcftools stats  633357-UDN676680-P_H72KKBCXX-1-ID04.INDELs_Annotated.vcf.gz > UDN676680_INDELs.

# read depth 
bcftools query -f 'DP:[ %DP]\n' 633357-UDN676680-P_H72KKBCXX-1-ID04.INDELs_Annotated.vcf.gz > UDN676680_INDELS_DP.txt
#bcftools query -R ~/common/gene_definition/coding.exons.bed -f 'DP:[ %DP]\n' 633357-UDN676680-P_H72KKBCXX-1-ID04.INDELs_Annotated.vcf.gz

# read mappability
samtools flagstat 633357-UDN676680-P_H72KKBCXX-1-ID04.realigned.recal.bam

# detailed statistics
samtools stats 633357-UDN676680-P_H72KKBCXX-1-ID04.realigned.recal.bam > UDN676680bam.stats






