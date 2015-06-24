clc 
//initialisation of variables
C= 0.1 //N
F= 96500 //coloumbs
mna= 42.6*10^-5 //cm^2 volt sec^-1
mcl= 68*10^-5 // cm^2 colt sec^-1
//CALCULATIONS
k= F*(mna+mcl)*C/1000
//RESULTS
printf ('specific conductance of sodium chloride= %.5f ohm^-1 cm^-1',k)
