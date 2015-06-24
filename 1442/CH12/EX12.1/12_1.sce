clc
//initialisation of variables
x= 0.78
x1= 0.21
x2= 0.008
x3= 0.002
MN2= 28.013 //gms
MO2= 32 //gms
MAr= 39.948 //gms
MH2O= 18.016 //gms
//CALCULATIONS
M= x*MN2+x1*MO2+x2*MAr+x3*MH2O
//RESULTS
printf (' molecular wight of air= %.3f kg/kmol',M)
