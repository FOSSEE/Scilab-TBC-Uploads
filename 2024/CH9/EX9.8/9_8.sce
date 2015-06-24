clc
//Initialization of variables
pt=54.6 //psia
dh=64.1 //Btu/lbm
dh2=154.3 //Btu/lbm
vt=9.844 //ft^3/lbm
vt2=21.279 //ft^3/lbm
C=0.98
J=778
g=32.17
m=1 //lbm/sec
//calculations
At=m/C *sqrt(vt^2 /(2*g*J*dh))
A2=m/C *sqrt(vt2^2 /(2*g*J*dh2))
//results
printf("Throat area = %.4f ft^2",At)
printf("\n Area at part 2 = %.5f ft^2",A2)
