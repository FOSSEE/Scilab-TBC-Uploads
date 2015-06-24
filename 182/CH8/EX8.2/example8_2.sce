// to find the range of Cx in fig 8-5
// example 8-2 in page 199
clc;
// data given
C1=0.1e-6; //standard capacitance in micro farad
r=[100/1 1/100];// range of the ratio R3/R4
Cx=C1*r;// range of Cx
printf("The range of Cx is from %.3f micro-F to %d micro-F",Cx(2)*10^6,Cx(1)*10^6);
//result
//The range of Cx is from 0.001 micro-F to 10 micro-F 