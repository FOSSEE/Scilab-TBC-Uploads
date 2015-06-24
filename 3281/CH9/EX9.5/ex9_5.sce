//Page Number: 454
//Example 9.5
clc;
//Given
S11=0.40;
S12=0.01;
S21=2.00;
S22=0.35;

ZL=20; //ohm
ZS=30; //ohm
Z0=ZL+ZS; //ohm

//Reflection coefficients of source and load
TL=(ZL-Z0)/(ZL+Z0);
TLm=-TL;
TS=(ZS-Z0)/(ZS+Z0);
TSm=-TS;

//Reflection coefficients of input and output
Tin=S11+((S12*S21*TL)/(1-(S22*TL)));
Tout=S22+((S12*S21*TS)/(1-(S22*TS)));

//Transducer Gain
x=(1-(TSm)^2)/((1-(S11*TSm))^2); //Value of should be 1.145
y=(S21*S21);
z=(1-(TLm)^2)/((1-(Tout*TLm))^2);
GT=x*y*z;
disp(GT,'Transducer Gain:');

//Available Power Gain
z1=1-(Tout)^2;
GA=(x*y)/z1;
disp(GA,'Available power Gain:'); 

//Power Gain
z2=1-(Tin)^2;
GP=(x*y)/z2;
disp(GP,'Power Gain:');

//All the end calculations of finding gain are not accurate in the book, hence the answers dont match

