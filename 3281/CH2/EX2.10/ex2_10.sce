//Page Number: 
//Example 2.10
clc;
//Given,

c=3D+8; //m/s
a=3; //cm
a1=a/100; //m
b=2; //cm
b1=b/100; //m
f=7.5D+9; //HZ
p=5D+3; //W

mu=%pi*4D-7;
w=2*%pi*f;
bet=sqrt(((w/c)^2)-((%pi/a1)^2));
//Charecteristic impedance
z0=w*mu*2*b/(bet*a);
disp('ohm',z0,'Charecteristic impedance:');

//Peak electric field
e0=4*w*mu*p/(bet*a*b);
disp('V/m',e0,'Peak electric field:');

//Maximum voltage
v0=e0*b1;
disp('kV',v0/1000,'Maximum voltage:');

//Answer for v0 is given as 3.172 kV it should be 33.71 kV
