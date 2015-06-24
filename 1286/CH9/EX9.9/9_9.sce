clc
//initialisation of variables
c1=0.08
c2=0.003
c3=0.1
T2=100//k
T1=50//k
//CALCULATIONS
r1=c1*(T2-T1)
r2=(c2/2)*(T2^2-T1^2)
r3=c3*log(T2/T1)
ds=5*(r1-r2-r3)
//results
printf(' change in entropy = % 1f cal/k',ds)
