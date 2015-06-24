clc
w = 10 // width of cut in cm
h = 0.32 // depth of cut in cm
n = 8 // number of teeth in cutter
ft = 0.033 // feed rate per tooth
N = 200 // cutter speed in rpm
ita = 60/100 // efficiency
f = n*ft*N // feed rate in cm/min.
mrr = w*h*f // metal removal rate in cm^3/min.
k = 8.2 // machinibility factor from table 15.3
hpc = mrr/k // horsepower at cutter
hpm = hpc/ita // horsepower at motor
printf("\n Horsepower at cutter = %0.2f\n Horsepower at motor = %0.2f" , hpc , hpm)
// 'Answers vary due to round off error'
