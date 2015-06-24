clc
alpha = 0.7 // smoothing coefficient
d1 = 250 // demand for november
d2 = 300 // demand for december
f1 = 200 // forecast for november
f2 = alpha*d1 + (1-alpha)*f1 // forecast for december
f3 = alpha*d2 + (1-alpha)*f2 // forecast for january
f3 = ceil(f3)
printf("\n Forecast for january = %d units" , f3)
