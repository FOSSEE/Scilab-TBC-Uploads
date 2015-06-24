//Example 11.6

clear;

clc;

Vref=5;

TC=20*10^(-6);

liner=50*10^(-6);

Vdo=3;

TCVos=5*10^(-6);

CMRRdB=100;

Io=10*10^(-3);

R=Vref/Io;

delVref=liner;

delVosVl=10^(-CMRRdB/20);

delIo=(delVosVl+delVref)/R;

Romin=1/delIo;

VCC=15;

VLmax=VCC-Vdo-Vref;

printf("(a) R=%.f ohms",R);

printf("\n\n(b) TC(Io)=%.f nA/V",delIo*10^9);

printf("\n    Ro(min)=%.2f Mohms",Romin*10^(-6));

printf("\n\n(c) VL<=%.f V",VLmax);