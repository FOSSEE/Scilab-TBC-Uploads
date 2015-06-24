clc();
clear;
// To calculate the intrinsic carrier density and conductivity
m=9.109*10^-31;
k=1.38*10^-23;
T=300;
e=1.6*10^-19;
h=6.626*10^-34;
Eg=0.7;
mew_e=0.4;     //electron mobility
mew_h=0.2;    //hole mobility
C=2*(2*%pi*m*k/((h^2)))^(3/2);
X=2*k*T/e;
ni=C*(T^(3/2))*exp(-Eg/X);
sigma=ni*e*(mew_e+mew_h);
printf("conductivity is %f ohm-1 m-1",sigma);

//answer given in the book is wrong
