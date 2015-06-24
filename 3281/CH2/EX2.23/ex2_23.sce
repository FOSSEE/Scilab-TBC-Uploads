//Page Number: 107
//Example 2.23
clc;
//Given
c=3D+8; //m/s
f=9D+9; //hz
a=5; //cm
a1=a/100; //m
e=1;
mu=1/(c*c);
p11=1.841;

fc=(p11*c)/(2*%pi*a1);
//Maximum power transmitted
pmax=1790*(a1*a1)*sqrt(1-((fc/f)^2)); 
disp('kW',pmax,'Maximum power transmitted:');
