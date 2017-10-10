clc;
//page no 8-61
//Example 8.21
C=0.01*10^(-6);//in farads
Rc=5*10^3;//in ohms
fm=1*10^3;//in Hz
Mmax=1/sqrt(1+(2*%pi*fm*C*Rc)^2);
disp(Mmax,'Mmax=');
