clc
//initialisation of variables
Wrev= 757.8 //kJ
W= 383.4 //kJ
m= 2 //kg
s2= 7.2795 //kJ/kg K
s1= 0.2966  //kJ/kg K
Qr= 5369.7 //kJ
T= 150 //C
T0= 20 //C
//CALCULATIONS
I= Wrev-W
dS= m*(s2-s1)
Sr= -Qr/(273.15+T)
I1= (273.15+T0)*(dS+Sr)
//RESULTS
printf (' Irreversibility of the process= %.1f kJ',I1)
