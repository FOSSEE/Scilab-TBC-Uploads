clc
//Initialization of variables
f=5 //lbm/s
h2=1020 //B/lbm
h1=1000 //B/lbm
v2=50 //ft/s
v1=100 //ft/s
J=778
g=32.2
z2=0
z1=100
gc=32.2
Q=50 //Btu/s
//calculations
W=Q/f - (h2-h1) - (v2^2 -v1^2)/(2*J*gc) - g/gc *(z2-z1)/J
power = W*f
//results
printf("Work done = %.1f Btu/lbm",W)
printf("\n Power = %.1f Btu/s",power)
