clc
//initialisation of variables
m= 7 //gms
m1= 16 //gms
m2= 3.03 //gms
M= 32 //gms
M1= 28 //gms
M2= 2.02 //gms
T= 50 //C
V= 80 //lit
R= 0.0821 //atm lit mole^-1
//CALCULATIONS
Pn= m*R*(T+273)/(M1*V)
Po= m1*R*(T+273)/(M*V)
Ph= m2*R*(T+273)/(M2*V)
P= Pn+Po+Ph
//RESULTS
printf (' Partial pressure of nitrogen = %.3f atm',Pn)
printf (' \n Partial pressure of oxygen = %.3f atm',Po)
printf (' \n Partial pressure of hydrogen = %.3f atm',Ph)
printf (' \n total pressure = %.3f atm',P)
