clc
//initialisation of variables
h=4.8//ft
m=13.4//ft
k=10^-1//cm/sec
k1=3.28*10^-3//fps
n=7//ft
n1=11//ft
q=1.0*10^-2
//CALCULATIONS
Q=k1*h*n/n1//cfs/ft
Q1=2*q*10^2//cfs
//RESULTS
printf('A satisfactory orthogonal system the flow of into the collector =% f cfs',Q1)
