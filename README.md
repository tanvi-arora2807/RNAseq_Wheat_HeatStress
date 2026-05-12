# RNAseq_Wheat_HeatStress

## Overview
This project demonstrates a beginner RNA-seq preprocessing and alignment workflow using wheat heat stress data.

The pipeline includes:
- Quality control using FastQC
- Read trimming using fastp
- Reference genome indexing using HISAT2
- Read alignment
- SAM to BAM conversion
- BAM sorting and indexing
- Alignment statistics generation using samtools

---

## Tools Used
- FastQC
- fastp
- HISAT2
- samtools

---

## Project Structure

- `raw_data/` : raw sequencing reads and preprocessing reports
- `trimmed_reads/` : trimmed FASTQ files
- `reference_genome/` : reference genome and HISAT2 index files
- `scripts/` : pipeline shell script
- `qc_reports/` : quality control reports
- `aligned_reads/` : alignment output files
- `counts/` : placeholder for read count files
- `plots/` : placeholder for visualizations
- `results/` : placeholder for downstream analysis results

---

## Pipeline Script
Main workflow script:
`scripts/pipeline.sh`

---

## Author
Tanvi Arora
MSc Molecular Biology and Biotechnology
GB Pant University
