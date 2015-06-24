clc
//initialisation of variables
m= 2 //lb
T2= 35 //F
cv= 1.2 //Btu/lb F
Q= 34 //Btu
//CALCULATIONS
U= m*cv*T2
W= Q-U
//RESULTS
printf ('Change in internal enenrgy = %.f Btu',W)
