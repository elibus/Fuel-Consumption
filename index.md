---
title       : Fuel Consumption
subtitle    : An application to estimates mileage
author      : Marco Tizzoni
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
#lib_cdn     : "https://github.com/ramnathv/slidifyLibraries/tree/master/inst/libraries"
--- 

## Fuel Consumption

Fuel Consumption:

- uses the R `mtcars` dataset
- predicts mileage per gallon (`mpg`) of cars
- uses a simple linear model

This is what the `mtcars` dataset looks like.


```
## 'data.frame':	32 obs. of  11 variables:
##  $ mpg : num  21 21 22.8 21.4 18.7 18.1 14.3 24.4 22.8 19.2 ...
##  $ cyl : num  6 6 4 6 8 6 8 4 4 6 ...
##  $ disp: num  160 160 108 258 360 ...
##  $ hp  : num  110 110 93 110 175 105 245 62 95 123 ...
##  $ drat: num  3.9 3.9 3.85 3.08 3.15 2.76 3.21 3.69 3.92 3.92 ...
##  $ wt  : num  2.62 2.88 2.32 3.21 3.44 ...
##  $ qsec: num  16.5 17 18.6 19.4 17 ...
##  $ vs  : num  0 0 1 1 0 1 0 1 1 1 ...
##  $ am  : Factor w/ 2 levels "Auto","Manual": 2 2 2 1 1 1 1 1 1 1 ...
##  $ gear: num  4 4 4 3 3 3 3 4 4 4 ...
##  $ carb: num  4 4 1 1 2 1 4 2 2 4 ...
```

---

## Predictors
Three predictors are used:

 1. Horse Power (`hp`)
 1. Weigth (`wt`)
 1. Transmission Type (`am`)

Also:
 * Predictors can be adjusted using three input widgets.
 * Whenever one of the widget changes the plor gets updated. 

---

## Prediction plot
 * the prediction (blue line) 
 * the 95% confidence interval (light blue box)
 * data points (black)

<img src="figure/unnamed-chunk-2-1.png" title="plot of chunk unnamed-chunk-2" alt="plot of chunk unnamed-chunk-2" style="display: block; margin: auto;" />

---

## Source code

https://github.com/elibus/FuelConsumption






