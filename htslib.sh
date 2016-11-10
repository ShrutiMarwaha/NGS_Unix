############## Installation
# downlaod htlsib from https://github.com/samtools/htslib/releases/tag/1.3.1
cd ~/Documents/Softwares/
gunzip htslib-1.3.1.tar.bz2
tar -xvf htslib-1.3.1.tar
cd htslib-1.3.1
autoheader
autoconf
./configure
make
make install

# add location where you installed samtools or move (mv) the folder to /usr/local/bin
vi ~/.bash_profile
PATH="/Users/shruti/Documents/Softwares/htslib-1.3.1:${PATH}"

######## Run commands
# cd to directory where vcf file is stored
# bgzip – Block compression/decompression utility
bgzip -c UDN755592-SL146643.reheader.vcf > UDN755592-SL146643.reheader.vcf.gz

# Tabix indexes a TAB-delimited genome position file in.tab.bgz and creates an index file ( in.tab.bgz.tbi or in.tab.bgz.csi ) when region is absent from the command-line. 
# The input data file must be position sorted and compressed by bgzip 
tabix -p vcf UDN755592-SL146643.reheader.vcf.gz
tabix -h UDN755592-SL146643.reheader.vcf.gz 22 > UDN755592chr22.reheader.vcf.gz
# now test that the new file has meta-data (-h from previous command) and only chromosome 22.
bcftools view UDN755592chr22.reheader.vcf.gz | less
# to extract more than one region, separate out the regions by space.
tabix -h UDN755592-SL146643.reheader.vcf.gz 5 8 > UDN755592chr5chr8.reheader.vcf.gz
