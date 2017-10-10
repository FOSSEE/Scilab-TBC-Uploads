clc;
//page no 8-61
//Example 8.22
fm=10*10^3;//in Hz
Rc=50*10^3;//in ohms
C=0.01*10^(-6);//in farads
Mmax=1/sqrt(1+(2*%pi*fm*C*Rc)^2);
disp(Mmax,'Mmax for modulating frequecy 10kHz is ');
fm1=5*10^3;//in Hz
Mmax1=1/sqrt(1+(2*%pi*fm1*C*Rc)^2);
disp(Mmax1,'Mmax for modulating frequecy 5kHz is ');
