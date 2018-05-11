########## Samtools installation ####################
# Download from http://www.htslib.org/download/
curl -O https://github.com/samtools/samtools/releases/download/1.2/samtools-1.2.tar.bz2
cd ~/Documents/Softwares/
cd samtools-1.2
make
sudo make install
# add location where you installed samtools or move (mv) the folder to /usr/local/bin
vi ~/.bash_profile
# PATH="/Users/shruti/Documents/Softwares/samtools-1.2/bin:${PATH}"
source ~/.bash_profile
# check if its installed properly and location
which samtools
# help
samtools
######################################################

# move to the directory where bam file is stored
cd ~/Documents/Softwares/ngs/variants/
# flagstat command provides simple statistics about the data in bam file
samtools flagstat na12878_sorted.bam 

samtools depth /scratch/PI/euan/common/udn/output/rtg_output/DCM_04172018/DCM138/DCM138_merged_alignments.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}'
