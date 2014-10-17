---
title: "Week 8 Problem Set"
author: "Ben Weinstein"
date: "Wednesday, October 15, 2014"
output:
  html_document:
    toc: true
    number_sections: true
    theme: readable
---

#Example 1

```r
require(reshape2)
require(knitr)
require(ggplot2)
setwd("C:/Users/Ben/Dropbox/Class/Bayes/Week8/")
dat<-read.csv("BBS data for NY.csv")
d<-dat[,c("Year","Northern.Bobwhite")]
```

![](https://c1.staticflickr.com/3/2548/3894334401_9fee386e35.jpg)

##Poisson Model for Northern Bobwhite











