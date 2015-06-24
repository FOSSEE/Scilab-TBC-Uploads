clc
//initialisation of variables
di= 0.2 //in
dm= 2 //in
n= 10
F= 10 //lb
G= 12*10^6
//CALCULATIONS
k= G*di^4/(64*dm^3*n)
ke= 1/((1/(k+k))+(1/k)+(1/k))
delta= F/ke
//RESULTS
printf ('elongation= %.2f in',delta)
