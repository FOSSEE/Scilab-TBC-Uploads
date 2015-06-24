clc
//Initialization of variables
Q=600 //cfs
z=350 //ft
eta=0.9
//calculations
power=62.4*Q*z*eta/550
rpm=75
n=2
ns=rpm*sqrt(power/n) /z^(5/4)
phi=0.45
D=153.3*sqrt(z) *phi/rpm
rpm2=600
ns2=rpm2*sqrt(power/n) /z^(5/4)
//results
printf("For two turbines, ns= %.2f",ns)
printf("\n For francis turbines, ns= %d ",ns2)
