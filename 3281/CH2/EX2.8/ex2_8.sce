//Page Number: 96
//Example 2.8
clc;
//Given,
c=3D+8; //m/s
a=7; //cm
b=3.5; //cm
f=3D+9; //Hz
h0=10; //amp/m

//Wave impedance
lamc=2*a;
lam=c/f;//m
lam=lam*100;//cm
lamg=lam/sqrt(1-(lam/lamc)^2); //cm
z0=377*lamg/h0; //ohm

a1=a/100;//m
b1=b/100;//m
//Average power transmitted
p=(z0*h0*h0*a1*b1)/4;
disp('W',p,'Average power transmitted:');

//Peak electric field
e0=z0*h0;
disp('kV/m',e0/1000,'Peak electric field:');

//Answer for p is given as 28.3 W but it should be 32.99W
