//problem 16 pagenumber 2.99
//given
f1=500;//hz
f2=2.2e3;//hz
a=5;
c=0.1e-6;//farad
rf1=10e3;//ohm
//determine r1 r2
R1=1/(2*3.14*f1*c);
R2=1/(2*3.14*f2*c);
Ri=2e3;//ohm assuming
Rf=(a-1)*Ri;format(6);
disp('R = '+string(R1/10^3)+' Kohm');
disp('R2 = '+string(R2/10^3)+' Kohm');//error in book
disp('R1 = '+string(Ri/10^3)+' Kohm');
disp('Rf = '+string(Rf/10^3)+' Kohm');



