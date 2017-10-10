clc; clear; close;

LEnand=4/3;
Cout=4.5;
Cin=1;
N=3;
Pnand=1;
LEp=LEnand^3;
disp(LEp,'Logical effort=');
FOp=Cout/Cin;
disp(FOp,'Electrical effort=');
BEp=2*3;
disp(BEp,'Branching effort=');
PE=LEp*FOp*BEp;
disp(PE,'Path effort=');
SE=PE^(1/N);
disp(SE,'Optimal stage effort=');
D=(N*SE)+Pnand*3;
disp(D,'Delay=');
