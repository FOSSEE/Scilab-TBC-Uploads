clc
//initialisation of variables
clear
n1= 2 //moles
n2= 100 //moles
Cp1= 17.9 //cal deg^-1 mole^-1
Cp2= 21.78 //cal deg^-1 mole^-1
T1= 30 //C
T2= 25 //C
L1= 5780 //cal
L2= 5410 //cal
h= 5620 //cal mole^-1
n3= 3 //moles
Cp3= 16.55 //cal deg^-1 mole^-1
//CALCULATIONS 
Cp= n2*Cp1+n1*Cp2
Q= (T2-T1)*Cp
Q1= (n1*L1+L2)
Q2= n3*h
dQ= Q2-Q1
dH= Q+dQ
HC= 300*Cp1+n3*Cp3
t= -dH/HC
Tf= T2+t
//RESULTS
printf ('Increase in temperature = %.2f deg',t)  
printf ('\n Final temperature = %.1f deg',Tf)  
