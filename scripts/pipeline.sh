!/bin/bash

# Quality Control
fastqc demo_reads.fastq

# Read Trimming
fastp -i demo_reads.fastq -o trimmed_demo.fastq

# Build HISAT2 Index
hisat2-build reference.fa wheat_index

# Alignment
hisat2 -x wheat_index -U trimmed_demo.fastq -S aligned.sam

# Convert SAM to BAM
samtools view -S -b aligned.sam > aligned.bam

# Sort BAM
samtools sort aligned.bam -o aligned_sorted.bam

# Index BAM
samtools index aligned_sorted.bam

# Alignment Statistics
samtools flagstat aligned_sorted.bam
