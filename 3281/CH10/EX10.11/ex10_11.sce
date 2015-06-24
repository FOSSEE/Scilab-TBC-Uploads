//Page Number: 562
//Example 10.11
clc;
//Given
Er=6;
d=3D-3; //m
Z0=50; //ohm
E0=8.854D-12; //F/m
Mu0=4*%pi*10D-7; //H/m

//(i) W 
W=(377*d)/(sqrt(Er)*Z0);
disp('mm',W*1000,'Required Width:');

//(ii)Stripline capacitance
C=(E0*Er*W)/d;
disp('pF/m',C*10^12,'Stripline capacitance:');

//(iii)Stripline inductance
L=(Mu0*d)/W;
disp('muH/m',L*10^6,'Stripline inductance:');

//(iv)Phase velocity
c=3D+8;
vp=c/sqrt(Er);
disp('m/s',vp,'Phase velocity');
