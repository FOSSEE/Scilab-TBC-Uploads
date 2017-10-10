clc;
//page no 8-64
//Example 8.24
C=0.01*10^(-6);//in Farads
Rc=5*10^3;//in ohms
fm=10*10^3;//in Hz
Mmax=1/sqrt(1+(2*%pi*fm*C*Rc)^2);
disp(Mmax,'Mmax=');
