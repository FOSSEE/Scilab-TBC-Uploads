clc;
//page no 147
//prob no. 5.1
// refer fig 5.7
//The capacitance in pF
C1=200;
C2=2400;
C3=8;
t=1/C1+1/C2+1/C3; //temperary variable
Ceq=1/t;//pF
Ceq=Ceq*10^-12;//In Farad
L=2*10^-6;//In H
f0=1/(2*%pi*sqrt(L*Ceq))*10^-6; // IN MHz
disp('MHz',f0,'(a)  The oscillation frequency is');
f0=1/(2*%pi*sqrt(L*C3*10^-12))*10^-6; // IN MHz
disp('MHz',f0,'(b)  Assuming Ceq~C3 , the oscillation frequency is');
B=-C1/C2;  //based on eq 5.3
disp(B,'(c) The feedback fraction is ');
A=1/B;
disp(A,'The gain is');
