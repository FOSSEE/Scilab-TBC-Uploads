clc
//initialisation of variables
P= 10 //psia
P1= 100 //psia
T= 140 //F
k= 1.4
R= 55.16 //ft lb/lb R
//CALCULATIONS
dh= (k*R*(T+460)/(k-1))*((P/P1)^((k-1)/k)-1)*(72/56000)
//RESULTS
printf ('Enthalpy change= %.1f Btu/lb',dh)
