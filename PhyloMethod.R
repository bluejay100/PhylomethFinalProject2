

#get packages 


library(ape)
library(phytools)
library(phangorn)
library(evobiR)
library(seqinr)
library(zoo)

#get tree that contains all of the desired data in phylo format (ape)


setwd("C:/Users/Jasper/Desktop/EEB603")

```{r, eval=FALSE}

tree.example <- read.tree("tree.nwk")
plot(tree.example)

#plot tree
ape::ltt.plot(tree.example, log="y")

```
#or sim the tree?



#also get the sequencing data used in the tree.  Convert to codons
```{r, eval=FALSE}

seq.data <- read.alignment("CdsFastaTrunc.fas", fasta, forceToLower = TRUE)

codons.data <- codons(seq.data)

```



#sliding window analysis on the data, determine KaKs ratios at each point and see if significant
#rollapply function from zoo package

#

```{r, eval=FALSE}

#KaKs ratio with codons

sw.data <- rollapply(codon.data, 422, seqinr::kaks(codon.data,verbose = FALSE, debug = FALSE,  
          forceUpperCase = TRUE), by = 1, by.column = TRUE, 
          fill = if (na.pad) NA, na.pad = FALSE, partial = FALSE, coredata = TRUE)

```

#or maybe try just by nucleotide position?

```{r, eval=FALSE}

rollapply(seq.data, 422, seqinr::"___SOME OTHER FUNCTION___"(seq.data,verbose = FALSE, 
          debug = FALSE,  forceUpperCase = TRUE), by = 1, by.column = TRUE, 
          fill = if (na.pad) NA, na.pad = FALSE, partial = FALSE, coredata = TRUE)

```



#graph it?

```{r, eval=FALSE}

plot(sequence(length(sw.data)), sw.data, main = "Sliding Window",xlab="Start of window", type="l", ylab="Ka/Ks ratio")


```

















#get discrete data on host and serotype

```{r, eval=FALSE}

discrete.data <- read.csv(file="____filepath_____", stringsAsFactors=FALSE) 



```

