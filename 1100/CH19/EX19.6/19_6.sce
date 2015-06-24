clc
//initialisation of variables
Tw= 200 //F
Ta= 600 //F
cpb= 0.25 // Btu/lb F
tf= 0.68
uf= 0.000017 //lbm/sec ft
D= 0.902 //in
V= 100 //fps
d= 0.0375 //lb/cu ft
//CALCULATIONS
Nre= (D/12)*V*d/uf
Npr= 0.68
h= cpb*V*3600*d*0.023/(Nre^0.2*Npr^(2/3))
//RESULTS
printf ('Film coefficient = %.1f Btu/sq ft hr F',h)
