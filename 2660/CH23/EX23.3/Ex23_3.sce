clc
d1 = 500 // demand for october
d2 = 600 // demand for november
d3 = 700 // demand for december
w1 = 0.25 // relative weight with december
w2 = 0.25 // relative weight with november
w3 = 0.5 // relative weight with october
f = w1*d1 + w2*d2 + w3*d3 // forecast
printf("\n Forecast by weighted moving average = %d" , f)
