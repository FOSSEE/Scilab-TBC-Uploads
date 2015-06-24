clc
clear
//Initialization of variables
T=77+460 //R
x1=0.21
x2=1-x1
G=-169557 //Btu/mole
n1=1
n2=3.76
R0=1.986
v=0.0885
pi=14.7
J=778
//calculations
dg1=-n1*R0*T*log(x1)
dg2=-n2*R0*T*log(x2)
dg=dg1+dg2
dG=dg+G
W=-dG
W2=-G
p=0.0004 //atm
G1=-n1*R0*T*log(1/p)
W3= -(dg1+G+G1)
dgf=v*pi*144/J
//results
printf("In case 1,Work done = %d Btu/mole C",W)
printf("\n In case 2,Work done = %d Btu/mole C",W2)
printf("\n In case 3,Work done = %d Btu/mole C",W3)
printf("\n In case 4,Work done = %.2f Btu/mole C",dgf)
