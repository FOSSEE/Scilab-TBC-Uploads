clc
//initialisation of variables
T= 600 //K
P= 1 //atm
R= 0.0862 //atm lit/mol K
//CALCULATIONS
C= P/(R*T)
r= C^2*4*10^-6 
r1= 6*10^23*r
//RESULTS
printf (' No of molecules= %.1e molecules l^-1 sec^-1',r1)
