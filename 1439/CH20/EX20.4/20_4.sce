clc
//initialisation of variables
R= 8.31*10^7 //ergs deg^-1 mole^-1
T= 20 //C
s= 4.3*10^-13 //sec
D= 6.15*10^-7 //cm^2 sec^-1
d= 0.9982 //g/cc
v= 0.735 //cm^3 g^-1
//CALCULATIONS
M= R*(273+T)*s/(D*(1-d*v))
//RESULTS
printf ('molecular weight serum albium = %.f g mole^-1',M)
