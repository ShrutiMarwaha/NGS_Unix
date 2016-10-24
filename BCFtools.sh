cd ~/Documents/Softwares/
cd bcftools-1.2
make
make /usr/bin install
which bcftools

# find the order of chromsomes in vcf file
bcftools view -H UDN755592-SL146643.reheader.vcf | cut -f 1 | uniq
