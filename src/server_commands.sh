ln -s /usr/share/data-minor-bioinf/assemly/oil*

seqtk sample -s1127 oil_R1.fastq 5000000 > sub1.fastq
seqtk sample -s1127 oil_R2.fastq 5000000 > sub1.fastq
seqtk sample -s1127 oilMP_S4_L001_R1_001.fastq 1500000 > mp1.fastq
seqtk sample -s1127 oilMP_S4_L001_R2_001.fastq 1500000 > mp1.fastq

fastqc -o fastqc sub*.fastq mp*.fastq
multiqc -o multiqc fastqc

platanus_trim sub*.fastq
platanus_trim mp*.fastq

platanus_internal_trim sub*.fastq
platanus_internal_trim mp*.fastq

fastqc *.trimmed
multiqc -o multiqc *.trimmed

rm mp*.fastq sub*.fastq

platanus assemble -f *.trimmed

platanus scaffold -c out_contig.fa -IP1 trimmed/*.trimmed -OP2 *.int_trimmed

platanus gap_close -c out_scaffold.fa -IP1 trimmed/*.trimmed -OP2 *.int_trimmed
