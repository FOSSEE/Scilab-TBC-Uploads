//Example 1_4
clc;
clear;
close;
format('v',6);
//given data : 
Vs=6;//V
//Point A & C, B & D are shorted
RAB=(4*4/(4+4));//ohm
RDC=(4*4/(4+4));//ohm
Req=RAB*RDC/(RAB+RDC);//ohm
Is=Vs/Req;//A
disp(Is,"Current supplied by the battery(A)");
