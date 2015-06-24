clc
//initialisation of variables
n=0.5
n1=0.6
T2=27+273//k
//CALCULATIONS
T1=T2/(1-n)
T=T2/(1-n1)
dt=T-T1
//results
printf(' \n source tempperature must be raised by= % 1f c',dt)
