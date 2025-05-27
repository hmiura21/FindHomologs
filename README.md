# 🧬 find_homologs.sh

This repository contains a Bash script for identifying **homologous genes** using BLAST. The goal of this script is to search for **approximate matches** of a protein domain (such as a Histidine Kinase domain) in nucleotide sequences from other organisms—useful in comparative genomics and functional inference.

---

## 📚 Background

This project is based on an exercise to explore the utility of **sequence similarity searching** for identifying **homologous genes** in genome assemblies.

Specifically, we use a **protein query** sequence (e.g., Histidine Kinase domain from *E. coli* K-12) and BLAST it against a nucleotide subject assembly to identify potential homologs. BLAST is well-suited for such tasks due to its speed and sensitivity.

---

## 🧪 Assignment Tasks

   - Create a script to:
     - Accept a **protein query file**
     - Accept a **nucleotide subject file**
     - Use the appropriate BLAST program (`tblastn`) to search protein queries against nucleotide subjects
     - Filter results to include only:
       - Sequence identity ≥ **30%**
       - Match length ≥ **90%** of the query sequence length
     - Output results to a specified output file
     - Print the number of valid matches to `stdout`

---

## 🛠 Usage

```bash
./find_homologs.sh <query_protein.faa> <subject_genome.fna> <output_file.txt>
```
---

## 📁 Repository Structure
- `Escherichia_coli_K12.fna`: example bacteria assembly for Escherichia coli (example query data)
- `Pseudomonas_aeruginosa_UCBPP-PA14.fna`: example bacteria assembly for Pseudomonas aeruginosa (example query data)
- `Vibrio_cholerae_N16961.fna`: example bacteria assembly for Vibrio cholerae (example query data)
- `Wolbachia.fna`: example bacteria assembly for Wolbachia (example query data)
- `HK_domain.faa`: sequence of histidine kinase (HK) domains from the organism Escherichia coli strain K-12 (example subject file)
- `find_homologs.sh`: script that contains all commands


