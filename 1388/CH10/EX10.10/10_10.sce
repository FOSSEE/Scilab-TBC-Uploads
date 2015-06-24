clc
//initialisation of variables
k= 6.3*10^2 //ml mole^-1 sec^-1
P= 400 //mm
T= 600 //K
R= 82.06
//CALCULATIONS
C= (P/760)/(R*T)
t= 1/(9*C*k)
//RESULTS
printf (' time= %.1f sec',t)
