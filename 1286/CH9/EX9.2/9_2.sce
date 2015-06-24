clc
//initialisation of variables
m=0.001//kg
l=80000//cal/kg
T1=273//k
T2=373//k
s=1000
l1=540000//cal/kg
//CALCULATIONS
ds=(m*l/T1)+(m*s*log(T2/T1))+(m*l1/T2)
//results
printf(' change in entropy = % 1f cal/k',ds)
