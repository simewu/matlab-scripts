# MATLAB Scripts
A collection of MATLAB plotting scripts.

## [Confidence Interval Plot](https://github.com/simewu/matlab-scripts/blob/main/Confidence%20Inverval%20Plot/ConfidenceIntervalPlotDemo.m)
<img src="Confidence%20Inverval%20Plot/Screenshot.png" width="300"/>

In Excel, calculate the 95% confidence interval of a `RANGE` of cells with
```
=CONCAT(AVERAGE(RANGE), " ± ", CONFIDENCE(1-0.95, STDEV.P(RANGE), COUNT(RANGE)))
```

## [Hatched Bar Plot](https://github.com/simewu/matlab-scripts/blob/main/Hatched%20Bar%20Plot/Hatchfill2BarPlotDemo.m)
<img src="Hatched%20Bar%20Plot/Screenshot.png" width="300"/>
Requires three file dependencies:

* `hatchfill2.m` https://github.com/hokiedsp/matlab-hatchfill2/blob/master/hatchfill2.m
* `legendflex.m` https://github.com/kakearney/legendflex-pkg/blob/master/legendflex/legendflex.m
* `getpos.m` https://github.com/kakearney/legendflex-pkg/blob/master/setgetpos_V1.2/getpos.m
