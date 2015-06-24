clc
//initialisation of variables
Tw= 200 //F
Ta= 600 //F
V= 100 //fps
Di= 0.902 //in
d= 0.0375 //lb/cu ft
u= 0.000020 //lbm/sec
cp= 0.25 //Btu/lb F
k= 0.027 //Btu/sq ft hr
//CALCULATIONS
NRe= (Di*V*d)/(u*12)
Npr= 0.66
h= k*0.023*NRe^0.8*Npr^0.4*12/Di
//RESULTS
printf ('Film coefficient = %.1f Btu/sq ft hr F',h)
