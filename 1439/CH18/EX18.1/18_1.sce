clc
//initialisation of variables
l= 3000 //A
h= 6.62*10^-27 //erg sec
c= 3*10^10 //cm/sec
N= 6*10^23
//CALCULATIONS
E= h*c/(l*10^-8)
E1= E*N/(4.18*10^7)
//RESULTS
printf (' energy in ergs = %.f cal mole^-1',E1+276)
