clc();
clear;
// To calculate the conductivity
Eg=1.1;   //energy gap in eV
m=9.109*10^-31;
k=1.38*10^-23;
T=300;
e=1.6*10^-19;
h=6.626*10^-34;
mew_e=0.48;     //electron mobility
mew_h=0.013;    //hole mobility
C=2*(2*%pi*m*k/(h^2))^(3/2);
X=2*k*T/e;
Y=-Eg/X;
A=exp(Y);
ni=C*(T^(3/2))*A;
sigma=ni*e*(mew_e+mew_h);
printf("conductivity in ohm-1 m-1 is");
disp(sigma);

//answer given in the book is wrong
