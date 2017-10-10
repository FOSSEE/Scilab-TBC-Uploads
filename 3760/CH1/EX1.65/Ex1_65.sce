clc;
r1=20; // resistance of primary side
l1=1*10^-3; // leakage inductance of primary side
r2=0.5; // resistance of secondary side
l2=0.025*10^-3; // leakage inductance of secondary side
m=0.2; //  mutual inductance
l=50; // load in ohm connected to transformer
v=5; // voltage source 
R=2000; // internal resistance of source
k=sqrt(R/l); // turns ratio for maximum power transfer
printf('Turns ratio is %f\n',k);
r21=0.5*k^2; // secondary resistance referred to primary
l21=l2*k^2; // secondary inductance referred to primary
lp=l*k^2; // load resistance referred to primary
rs=r1+r21+lp+R; // total series resistance
rp=((R+r1)*(R+r1))/rs; // equivalent resistance
leq=l1+l21; // equivalent inductance
f1=100; // frequency in hertz at which load voltage has to be calculated
Vl=(1/k)*(R/rs)*v*(1/(sqrt(1+(rp/(2*%pi*f1*m))^2)));
printf('load voltage at %f hz is %f v\n',f1,Vl);
f2=5000; // frequency in hertz at which load voltage has to be calculated
Vl=(1/k)*(R/rs)*v;
printf('load voltage at %f hz is %f v\n',f2,Vl);
f3=15000; // frequency in hertz at which load voltage has to be calculated
Vl=(1/k)*(R/rs)*(1/(sqrt(1+((2*%pi*f3*l1)/rs)^2)))*v;
printf('load voltage at %f hz is %f v\n',f3,Vl);
