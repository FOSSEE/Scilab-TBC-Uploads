clc
//initialisation of variables
m1=0.08//kg
m2=0.12//kg
t1=20//c
t2=50//c
T1=t1+273//k
T2=t2+373//k
s=1000//cal/kg
//CALCULATIONS
t=(m2*t2+m1*t1)/(m1+m2)
T3=t+273
s1=m1*s*log(T3/T1)
s2=m2*s*log(T3/T2)
ds=s1+s2
//results
printf(' change in entropy of universe = % 1f cal/k',ds)
