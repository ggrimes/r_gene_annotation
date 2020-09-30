
#https://bioconductor.org/packages/release/bioc/html/biomaRt.html
require(biomaRt)
mart = useMart("ensembl")
mart=useMart(biomart="ensembl", dataset="hsapiens_gene_ensembl")
transcripts<-c("ENST00000352993")
getBM(attributes = c("ensembl_gene_id",
                     "ensembl_transcript_id",
                     "ensembl_transcript_id_version",
                     "cdna"),
      filters    = "ensembl_transcript_id",
      values     = transcripts,
      mart       = mart)