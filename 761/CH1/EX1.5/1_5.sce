clc;
// page no 20
// prob no 1.5
// In the given problem B=6MHz, Tk=293, k=1.38*10^-23
B=6*10^6; Tk=293; k=1.38*10^-23;R=300;
Pn=k*Tk*B;
disp('W',Pn,'The noise power is');
// Th noise voltage is given by Vn=sqrt(4*k*Tk*B*R)
Vn=sqrt(4*k*Tk*B*R);
disp('volts',Vn,'Th noise voltage is');
// only one-half of this voltage is appears across the antenna terminals, the other appears across the source resistance. Therefore the actual noise voltag at the input is 2.7 uV