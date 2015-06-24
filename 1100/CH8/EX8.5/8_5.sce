clc
//initialisation of variables
Q= 826 //Btu/lb
T= 400 //F
T1= 1000 //F
T2= 2000 //F
//CALCULATIONS
Sw= Q/(T+460)
Sg= (Q/T1)*(log(T1+460)-log(T2+460))
S= Sw+Sg
//RESULTS
printf ('Total Entropy change = %.3f Btu/R',S)
