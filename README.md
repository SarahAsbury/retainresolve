# retainresolve
Retain-resolve agglomeration algorithim for 16S sequencing data. 

 
 ## About 

 This package has been developed to conveniently execute the retain-resolve agglomeration algorithm described in the manuscript: Mapping microbiota to clinical anxiety (Chin Fatt et al, 2022). The retain resolve algorithm requires ASV-level 16S count data stored as a phyloseq object. Users input parameters for ASV-level and genus-level filtering thresholds. The main output is a phyloseq object containing a mix of retained ASV-level and resolved genus-level taxa and their counts. 


## Summary
![Retain-resolve algorithim summary](folder/retainresolve_algorithim.png)
High quality PDF available also available for download in repository (retainresolve_algorithim.pdf).



## Install
devtools::install_github("SarahAsbury/retainresolve")


## Use
Once package is installed, use following command for retain-resolve glom documenation:

?retain.resolve_genus

