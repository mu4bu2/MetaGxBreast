## validate with `AnnotationHub::readMetadataFromCsv("TENxBrainData")`
## (above pkg directory)

infoString = c("CAL", "DFHCC", "DFHCC2", "DFHCC3", "DUKE", "DUKE2", "EMC2", "EORTC10994", "EXPO",
               "FNCLCC", "GSE25066", "GSE32646","GSE48091","GSE58644","HLP","IRB", "KOO","LUND",
               "LUND2","MAINZ","MAQC2","MCCC","MDA4","METABRIC","MSK","MUG","NCCS","NCI","NKI",
               "PNC","STK","STNO2","TCGA","TRANSBIG","UCSF","UNC4","UNT","UPP","VDX")


main.data <- data.frame(
  Title = c("CAL", "DFHCC", "DFHCC2", "DFHCC3", "DUKE", "DUKE2", "EMC2", "EORTC10994", "EXPO",
            "FNCLCC", "GSE25066", "GSE32646","GSE48091","GSE58644","HLP","IRB", "KOO","LUND",
            "LUND2","MAINZ","MAQC2","MCCC","MDA4","METABRIC","MSK","MUG","NCCS","NCI","NKI",
            "PNC","STK","STNO2","TCGA","TRANSBIG","UCSF","UNC4","UNT","UPP","VDX"
  ),
  Description = paste(
    "",
    c(
      "Dataset of breast cancer patients from the University of California, San Francisco and the California Pacific Medical Center (United States)",
      "Dataset of breast cancer patients from Dana-Farber Harvard Cancer Center (United States)",
      "Dataset of breast cancer patients from Dana-Farber Harvard Cancer Center (United States)",
      "Dataset of breast cancer patients from Dana-Farber Harvard Cancer Center (United States)",
      "Dataset of breast cancer patients from Duke university hospital (United States)",
      "Dataset of breast cancer patients from Duke university hospital (United States)",
      "Dataset of breast cancer patients from Erasmus Medical Center (The Netherlands)",
      "Dataset of breast cancer patients from Trial number 10994 from the European Organization for Research and Treatment of Cancer Breast Cancer (Europe)",
      "Dataset of breast cancer patients from Expression project for oncology, large dataset of microarray data published by the International Genomics Consortium",
      "Dataset of breast cancer patients from F_d_ration Nationale des Centres de Lutte contre le Cancer (France)",
      "Dataset of breast cancer patients from Nuvera Biosciences",
      "Dataset of breast cancer patients from Osaka University",
      "Dataset of breast cancer patients from Karolinska Institutet",
      "Dataset of breast cancer patients from McGill University",
      "Dataset of breast cancer patients from University Hospital La Paz (Spain)",
      "Dataset of breast cancer patients from Dana Farber Cancer Institute",
      "Dataset of breast cancer patients from Koo Foundation Sun Yat-Sen Cancer Centre (Taiwan)",
      "Dataset of breast cancer patients from Lund University Hospital (Sweden)",
      "Dataset of breast cancer patients from Lund University Hospital (Sweden)",
      "Dataset of breast cancer patients from Mainz hospital (Germany)",
      "Dataset of breast cancer patients from Microarray quality control consortium (United States)",
      "Dataset of breast cancer patients from Peter MacCallum Cancer Centre (Australia)",
      "Dataset of breast cancer patients from MD Anderson Cancer Center (United States)",
      "2,000 clinically annotated primary fresh-frozen breast cancer specimens from tumour banks in the UK and Canada",
      "Dataset of breast cancer patients from Memorial Sloan-Kettering (United States)",
      "Dataset of breast cancer patients from Medical University of Graz (Austria)Medical University of Graz (Austria)",
      "Dataset of breast cancer patients from National Cancer Centre of Singapore (Singapore)",
      "Dataset of breast cancer patients from National Cancer Institute (United States)",
      "Dataset of breast cancer patients from National Kanker Instituut (The Netherlands)",
      "This dataset (GSE20711) Subseries of GSE20713 used to study epigenetic variations link to gene expression",
      "Dataset of breast cancer patients from Stockholm",
      "Dataset of breast cancer patients from Stanford/Norway (United States and Norway)",
      "Dataset of breast cancer patients from The Cancer Genome Atlas",
      "Dataset collected by the TransBIG consortium (Europe)",
      "Dataset of breast cancer patients from University of California, San Francisco (United States)",
      "Dataset of breast cancer patients from University of Northern California (United States)",
      "Cohort of untreated breast cancer patients from the Oxford Radcliffe (United Kingdom) and Karolinska (Sweden) hospital",
      "Dataset of breast cancer patients from Uppsala hospital (Sweden)",
      "Dataset of breast cancer patients from Veridex (The Netherlands)"
    )
  ),
  RDataPath = c(
    "MetaGxBreast/CAL.rda",          "MetaGxBreast/DFHCC.rda",      "MetaGxBreast/DFHCC2.rda",
    "MetaGxBreast/DFHCC3.rda",      "MetaGxBreast/DUKE.rda",      "MetaGxBreast/DUKE2.rda",
    "MetaGxBreast/EMC2.rda",     "MetaGxBreast/EORTC10994.rda",     "MetaGxBreast/EXPO.rda",
    "MetaGxBreast/FNCLCC.rda",     "MetaGxBreast/GSE25066.rda",     "MetaGxBreast/GSE32646.rda",
    "MetaGxBreast/GSE48091.rda",     "MetaGxBreast/GSE58644.rda",     "MetaGxBreast/HLP.rda",
    "MetaGxBreast/IRB.rda",           "MetaGxBreast/KOO.rda",     "MetaGxBreast/LUND.rda",
    "MetaGxBreast/LUND2.rda",     "MetaGxBreast/MAINZ.rda",     "MetaGxBreast/MAQC2.rda",
    "MetaGxBreast/MCCC.rda",     "MetaGxBreast/MDA4.rda", "MetaGxBreast/METABRIC.rda",
    "MetaGxBreast/MSK.rda", "MetaGxBreast/MUG.rda", "MetaGxBreast/NCCS.rda", 
    "MetaGxBreast/NCI.rda", "MetaGxBreast/NKI.rda", "MetaGxBreast/PNC.rda",
    "MetaGxBreast/STK.rda", "MetaGxBreast/STNO2.rda", "MetaGxBreast/TCGA.rda",
    "MetaGxBreast/TRANSBIG.rda", "MetaGxBreast/UCSF.rda", "MetaGxBreast/UNC4.rda",
    "MetaGxBreast/UNT.rda", "MetaGxBreast/UPP.rda", "MetaGxBreast/VDX.rda"
  ),
  BiocVersion="3.7",
  Genome=c("Affymetrix HGU", "Affymetrix HGU GPL570", "Affymetrix HGU GPL570", "Affymetrix HGU GPL570","Affymetrix HGU95 GPL8300","Affymetrix X3P GPL1352",
           "Affymetrix HGU GPL570","Affymetrix HGU GPL96","Affymetrix HGU GPL570","In-house cDNA GPL4819", "Affymetrix HGU GPL96","Affymetrix HGU GPL570","Affymetrix RSTA GPL10379","Affymetrix Gene1.0ST GPL6244",
           "Illumina","Affymetrix HGU GPL570","Affymetrix HGU95","Swegene GPL14373","Swegene GPL3883","Affymetrix HGU GPL96","Affymetrix HGU GPL96///GPL570///GPL1261",
           "Illumina GPL6106","Affymetrix HGU","Affymetrix HGU GPL96", "Operon GPL6486", "Affymetrix HGU GPL96", "In-house cDNA",
           "Agilent", "Affymetrix HGU GPL570", "Affymetrix HGU GPL97///GPL96", "In-house cDNA GPL180///GPL2776///GPL2777",
           "TCGA", "Affymetrix HGU GPL96", "In-house cDNA", "Agilent GPL885///GPL887///GPL1390", "Affymetrix HGU",
           "Affymetrix HGU GPL570", "Affymetrix HGU", "METABRIC"),
  SourceType="RData",
  SourceUrl=c("http://www.ebi.ac.uk/arrayexpress/experiments/E-TABM-158/", "http://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE19615",
              "http://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE18864", "http://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE3744",
              "http://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=gse3143", "http://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=gse6861",
              "http://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=gse12276", "http://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE1561",
              "http://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE2109", "http://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE7017",
              "http://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE25066", "http://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE32646",
              "http://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE48091", "http://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE58644",
              "http://www.ebi.ac.uk/arrayexpress/experiments/E-TABM-543/", "http://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE5460",
              "Unavailable", "http://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE31863",
              "http://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE5325", "http://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE11121",
              "http://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE20194","http://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE19177",
              "http://bioinformatics.mdanderson.org/pubdata.html", "https://www.ebi.ac.uk/ega/studies/EGAS00000000083",
              "http://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=gse2603", "http://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=gse10510",
              "http://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=gse5364", "Supplemental data from paper Breast cancer classification and prognosis based on gene expression profiles from a population-based study",
              "Not available", "http://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE20711", 
              "http://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=gse1456", "http://smd.princeton.edu/cgi-bin/publication/viewPublication.pl?pub_no=248",
              "http://cancergenome.nih.gov/", "http://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=gsE7390",
              "Not available", "http://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=gse18229",
              "http://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=gse2990","http://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=gse3494",
              "http://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=gse2034; http://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=gse5327"),
  SourceVersion="Feb 02 2018",
  Species="Homo sapien",
  TaxonomyId=9606,
  Coordinate_1_based=FALSE,
  DataProvider=c("Array Express", rep("GEO", 13), "Array Express", "GEO", "NA", rep("GEO", 5), "MDAnderson", "EGA", 
                 rep("GEO", 3), "paper supplementary", "NA", "GEO", "GEO", "SMD", "TCGA", "GEO", "NA", rep("GEO", 4)),
  Maintainer="Michael Zon <michaelzon7@gmail.com>",
  RDataClass="ExpressionSet",
  DispatchClass="Rda",
  Tags = "breast cancer expression",
  ResourceName = c(paste0(infoString, ".rda"))
)

write.csv(file="metadata.csv", main.data, row.names=FALSE)

