//Page Number: 103
//Example 2.17
clc;
//Given
a=2; //cm
a1=1/100; //m
b=1; //cm
b1=b/100; //m
p=10D-3; //W
c=3D+8; //m/s
f0=10D+9; //Hz

//Peak value of electric field
fc=c/(2*a);
E02=(4*p*377)/(a1*b1*sqrt(1-(fc/f0)^2));
E0=sqrt(E02);
disp('V/m',E0,'Peak value of electric field:');

//Maximum power transmitted
Ed=3D+6; //V/m
Pt=2.6D+13*(Ed/f0)^2;
disp('kW',Pt/1000,'Maximum power transmitted:');

//Answer is given as 2300kW but it is 2340kW
