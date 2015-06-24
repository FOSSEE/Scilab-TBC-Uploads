clc
//initialisation of variables
m=0.001//kg
s=500//cal/kg
li=80000//cal/kg
l1=540000//cal/kg
T1=273//k
T2=263//k
T3=373//k
s1=1000//cal/kg
//CALCULATIONS
d1=m*s*log(T1/T2)
d2=m*li/T1
d3=m*s1*log(T3/T1)
d4=m*l1/T3
d5=d4+d3+d2+d1
//results
printf(' increase in entropy = % 1f cal/k',d5)
