# rBiopaxParser

Parses BioPax files of Level 2 and Level 3 and represents them in R.  
https://github.com/frankkramer-lab/rBiopaxParser  
  
More concretely, `rBiopaxParser`:

 * Can download Biopax data from online resources

 * Parses Biopax owl files

 * Features many functions to select, add, modify and remove from the parsed Biopax models

 * Can produce regulatory graphs from Biopax pathway data and offers functions to merge, diff and transform these graphs in various ways 
 
 * Visualization functions to layout ina a (more or less) beautiful way
 
 * Can export the (modified) Biopax models to OWL

rBiopaxParser has been published in Bioinformatics!
rBiopaxParser - an R package to parse, modify and visualize BioPAX data. Kramer F, Bayerlova M, Klemm F, Bleckmann A, Beissbarth T. Bioinformatics (2013) 29(4): 520-522.
http://bioinformatics.oxfordjournals.org/content/29/4/520.abstract

You can retrieve rBiopaxParser from Bioconductor or GitHub:
http://www.bioconductor.org/packages/devel/bioc/html/rBiopaxParser.html
https://github.com/frankkramer-lab/rBiopaxParser  

  
### Prerequisites:  
This package suggests package RCurl to download Biopax files from the web.  
This package needs package XML to parse the Biopax .owl files.  
This package needs package graph to build graphs/networks from the data.  
This package suggests package Rgraphviz to visualize networks.    
To install directly from github you need package devtools.  
  
Installation or running certain functions MIGHT fail if these are not met. Please read carefully through the following instructions.   
  
### Installing prerequisites for Linux users:  
XML:   
Make sure your linux has library libxml2 installed. This is almost always the case. Otherwise run in your shell  
<code>
	sudo apt-get install libxml2
</code>  
will fix this issue. You will now be able to install R package XML, this should be automatically done when you install rBiopaxParser, or you can run within R:  
<code>
	install.packages("XML")
</code>  

RCurl:   
RCurl is only needed for a convenience function to download Biopax files directly within R. You can skip this step if you already have the Biopax data downloaded.  
Make sure your linux has library libcurl installed and curl-config in your path. Check out 
<code>
	locate libcurl
	locate curl-config
</code>  
If these are not found (usually the developer version is missing), most Linux users can usually fix this by running   
<code>
	sudo apt-get install libcurl4-openssl-dev
</code>    
You will now be able to install R package RCurl, this should be automatically done when you install rBiopaxParser, or you can run within R:  
<code>
	install.packages("RCurl")
</code>  
If you encounter more problems check out http://www.omegahat.org/RCurl/FAQ.html  
   
  
graph:  
Package graph has moved from CRAN to Bioconductor recently, you might encounter an error saying that package graph is not available for your distribution when calling install.packages("graph").  
Check out http://bioconductor.org/packages/release/bioc/html/graph.html or call
<code>
	source("http://bioconductor.org/biocLite.R")  
    biocLite("graph")
</code>  
to install it.  
  
  
Rgraphviz:   
Rgraphviz is used to layout the graphs generated in this package. You can layout and plot these yourself if you want to.  
Since version 2.1 Rgraphviz now includes graphviz!
You will now be able to install R package Rgraphviz using:  
<code>
	source("http://bioconductor.org/biocLite.R")  
    biocLite("Rgraphviz")
</code>    
If you are forced to use an earlier version of Rgraphviz you have to make sure
your Linux has package graphviz installed.
If this is not the case, you can usually fix this by running:
<code>
	sudo apt-get install graphviz
</code>    

If you encounter more problems check out http://www.bioconductor.org/packages/release/bioc/html/Rgraphviz.html  
  
  
devtools:  
Package devtools is available at CRAN. Call
<code>
	install.packages("devtools")
</code>  
to install it.  
  
  
### Installing prerequisites for Windows users:  
XML & RCurl:   
These packages depend on linux libraries, however Brian Ripley has put some work into this to enable Windows users.  
Check out  http://www.stats.ox.ac.uk/pub/RWin/bin/windows/contrib/ for these two packages for your R version.  
Download first XML...zip and then RCurl...zip and install them locally on your machine.  
  
  
graph:  
Package graph has moved from CRAN to Bioconductor recently, you might encounter an error saying that package graph is not available for your distribution when calling install.packages("graph").  
Check out http://bioconductor.org/packages/release/bioc/html/graph.html or call
<code>
	source("http://bioconductor.org/biocLite.R")  
    biocLite("graph")
</code>  
to install it.  
  
  
Rgraphviz:   
Rgraphviz is used to layout the graphs generated in this package. You can layout and plot these yourself if you want to.  
Since version 2.1 Rgraphviz now includes graphviz!
You will now be able to install R package Rgraphviz (including graphviz) using:  
<code>
	source("http://bioconductor.org/biocLite.R")  
    biocLite("Rgraphviz")
</code>
If you are forced to use an earlier version of Rgraphviz you have to make sure
your your machine has graphviz installed, it can be found at: http://www.graphviz.org  
Click on Download -> Windows. 
After installing graphviz, even older version of Rgraphviz will work.    
If you encounter more problems check out http://www.bioconductor.org/packages/release/bioc/html/Rgraphviz.html  
  
  
devtools:  
Package devtools is available at CRAN. For Windows this seems to depend on having Rtools for Windows installed. You can download and install this from:  
http://cran.r-project.org/bin/windows/Rtools/  
To install R package devtools call  
<code>
	install.packages("devtools")
</code>  
  
  
Finally:   
## Installing rBiopaxParser from Bioconductor:  
<code>
	source("http://bioconductor.org/biocLite.R") 
	biocLite("rBiopaxParser")
</code>

## Installing rBiopaxParser from GitHub:  
<code>
	install.packages("devtools")  
	library(devtools)  
	install_github(repo="rBiopaxParser", username="frankkramer-lab")
</code>



 
 