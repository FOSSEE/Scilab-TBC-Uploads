clc
//initialisation of variables
w=100//watt
T2=100+273//k
T1=273//k
L=80000//cal/kg
//CALCULATIONS
dt=T2-T1
Q1=T2*w/dt
m=(Q1-w)*60/(4.2*L)
//results
printf(' \n mass of ice melts in 1 min= % 1f kg',m)
