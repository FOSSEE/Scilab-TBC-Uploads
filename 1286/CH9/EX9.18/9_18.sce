clc
//initialisation of variables
T1=40//k
T2=120//k
c1=0.076
c2=0.00026
c3=0.15
//CALCULATIONS
r1=c1*(T2-T1)
r2=(c2/2)*(T2^2-T1^2)
r3=c3*log(T2/T1)
ds=5*(r1-r2-r3)
//results
printf(' change in entropy = % 1f cal/k',ds)
