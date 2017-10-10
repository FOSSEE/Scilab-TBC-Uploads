clc;
//page no 8-66
//Example 8.27
R=10*10^3;//in ohm
C=1000*10^(-12);//in farads
fm=10*10^3;//in Hz
Mmax=1/sqrt(1+(2*%pi*fm*C*R)^2);
disp(Mmax,'Mmax=');
