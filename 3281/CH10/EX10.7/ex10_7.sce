//Page Number: 558
//Example 10.7
clc;
//Given
Er=6;
h=4D-3; //m

//(i) W for Z0=50W
Z0=50; //W
W=(120*%pi*h)/(sqrt(Er)*Z0);
disp('mm',W*1000,'Required Width:');

//(ii)Stripline capacitance
E0=8.854D-12;
C=(E0*Er*W)/h;
disp('pF/m',C*10^12,'Stripline capacitance:');

//(iii)Stripline inductance
Mu0=4*%pi*10D-7;
L=(Mu0*h)/W;
disp('muH/m',L*10^5,'Stripline inductance:');

//(iv)Phase velocity
c=3D+8;
vp=c/sqrt(Er);
disp('m/s',vp,'Phase velocity');
