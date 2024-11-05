if (!requireNamespace("BiocManager", quietly = TRUE)) {
  install.packages("BiocManager")
}

bioc_packages <- c(
  "GO.db",
  "AnnotationHub",
  "BiocFileCache",
  "TxDb.Hsapiens.UCSC.hg38.knownGene",
  "org.Hs.eg.db",
  "org.Sc.sgd.db", 
  "org.Mm.eg.db", 
  "DESeq2",
  "SummarizedExperiment",
  "MatrixGenerics",
  "TxDb.Scerevisiae.UCSC.sacCer3.sgdGene",
  "GenomicFeatures",
  "AnnotationDbi",
  "Biobase",
  "BSgenome.Scerevisiae.UCSC.sacCer3",
  "BSgenome",
  "rtracklayer",
  "BiocIO",
  "GenomicRanges",
  "Biostrings",
  "GenomeInfoDb",
  "XVector",
  "IRanges",
  "S4Vectors",
  "BiocGenerics", 
  "sequencing", 
  "MotifDb", 
  "seqLogo"
)

cran_packages <- c(
  "dbplyr",
  "tibble",
  "ggplot2",
  "matrixStats"
)

install_bioc_packages <- function(packages) {
  for (pkg in packages) {
    if (!requireNamespace(pkg, quietly = TRUE)) {
      BiocManager::install(pkg)
    }
  }
}

install_cran_packages <- function(packages) {
  for (pkg in packages) {
    if (!requireNamespace(pkg, quietly = TRUE)) {
      install.packages(pkg)
    }
  }
}

install_bioc_packages(bioc_packages)

install_cran_packages(cran_packages)

lapply(c(bioc_packages, cran_packages), library, character.only = TRUE)

