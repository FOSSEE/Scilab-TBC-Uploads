clc
//initialisation of variables
w= 2.82*10^7
t2= 70 //min
t1= 60 //min
r2= 6.731 //cm
r1= 5.949 //cm
//CALCULATIONS
s= 2.303*log10(r2/r1)/(w*t2*t1)
//RESULTS
printf ('time = %.1e sec',s)
