clc
//initialisation of variables
r= 1.4
T= 15 //C
M= 0.788
//CALCULATIONS
T0= (T+273)*(1+((r-1)*M^2/2))
P= (T0-T-273)*100/T
//RESULTS
printf ('percentage rise = %.f per cent',P+2)
