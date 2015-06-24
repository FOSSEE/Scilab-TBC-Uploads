clc
//initialisation of variables
m=0.01//kg
T1=800//k
T2=500//k
T3=400//k
s1=60//cal/kg/k
s2=70//cal/kg/k
l=14000//cal/kg
//CALCULATIONS
ds=m*s1*log(T2/T3)+m*l/T2+m*s2*log(T1/T2)
//results
printf(' change in entropy = % 1f cal/k',ds)
