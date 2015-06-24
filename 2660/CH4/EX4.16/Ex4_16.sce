clc
l = 70 // length of stroke in cm
cs = 11 // cutting speed in m/min
rs = 24 // return speed in m/min
tm = (l/(100*cs)) + (l/(100*rs)) // min
printf("\n Time taken to broach a four spline brass = %0.4f min" , tm)
// Answers vary due to round off error
