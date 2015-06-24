//Exa 4.12
clc;
clear;
close;
// given data
RF=10;//in Kohm
R1=10;//in Kohm
R2=R1;//in Kohm
R3=R1;//in Kohm
R5max=50;//in Kohm
ADmin=5;//unitless
ADmax=200;//unitless
//Formula : ADmin=1+2*R4/R5max
R4=(ADmin-1)*(R5max/2);//in Kohm
//Formula : ADmax=1+2*R4/R5min
R5min=(2*R4)/(ADmax-1);//in Kohm
disp("Thus design values of resistors in Kohm are :");
disp(R1,"R1");
disp(R2,"R2");
disp(R3,"R3");
disp(R4,"R4");
disp(RF,"RF");
disp(R5min,"R5min");
disp(R5max,"R5max");