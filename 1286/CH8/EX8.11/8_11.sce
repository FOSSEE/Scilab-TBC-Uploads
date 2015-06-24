clc
//initialisation of variables
T1=20+273//k
T2=273//k
m=2//kg
L=80000//cal/kg
//CALCULATIONS
Q2=m*L/3600
w=(T1-T2)*Q2*4.2/(T2)
//results
printf(' \n minimum power output of the motor= % 1f H.P',w/746)
