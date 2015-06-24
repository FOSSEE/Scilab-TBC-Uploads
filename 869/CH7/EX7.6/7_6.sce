clc
//initialisation of variables
W= 64.4 //lb
I= 10 //slugft^2
g= 32.2 //ft/sec^2
//CALCULATIONS
m= W/g
k= sqrt(I/m)
//RESULTS
printf ('k= %.2f ft',k)
