clc
//initialisation of variables
V= 50 //lit
P= 20 //atm
T= 30 //C
P1= 6 //atm
T1= 10 //C
M= 32 //gm/gm mol
//CALCULATIONS
n= V*P/(0.082*(T+273))
m= n*M
n2= P1*V/(0.082*(T1+273))
m2= n2*M
//RESULTS
printf ('Initial Mass of Oxygen = %.f gm ',m)
printf (' \n Final mass of oxygen= %.f gm',m2)

