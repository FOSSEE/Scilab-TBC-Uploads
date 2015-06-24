clc
//initialisation
p=0.76
t1=0//c
t2=100//c
T1=t1+273//k
T2=t2+273//k
//CALCULATIONS
p=(2*p*T2)/(T1+T2)
//results
printf(' pressure of the gas= % 1f m',p)
