clc;
//Example 15.4
//Page No 643


//solution

D=2;
c=3*10^8;
f=6;
Pt=10;

disp("(a)The beam width is found by substituting into equation 15-29 ");

O=([70*c]/[(f*10^9)*D]);

disp(O,"T = ");

disp("(b)The transmit power gain is found by substituting into equation 15-31c, ");

A=([20*log10(f*10^3)]+[20*log10(2)]-42.2);

disp('dB',A,"Ap(dB) = ");

disp("(c)The receive power gain is found by substituting into equation 15-33c, ");

l=(c/(f*10^9));

disp('m/cycle',l,"l = ");

Ap=10*log10(5.4*[(D/l)^2]);

disp('dB',Ap,"Ap(dB) = ");

disp("(d)The EIRP is the product of the radiated power times the transmit antenna gain, ");

EIRP=Ap+(10*log10(Pt/0.001));

disp('dB',EIRP,"EIRP = ");
