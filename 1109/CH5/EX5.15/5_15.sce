clear;
clc;
R=10;C=0.008*(10^-6);l=60; //value of R as taken in solution
Rt=R*l; //Rt=total resistannce
Ct=C*l; //Ct=total capacitance
f=1600 //assupmtion
w=2*%pi*f;
b=sqrt(f*Rt*Ct/2);
lo=2*%pi/b;
printf("Wavelength of line = %f metres",fix(lo*100)/100);
