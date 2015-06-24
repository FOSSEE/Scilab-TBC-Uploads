//Ex:9.2
clc;
clear;
close;
r1=1000;
r2=1000;
c=100*10^-9;
f=(1/(2*%pi*c*r1));
printf("The freq of oscillation at 1 kohm= %f Hz",f);
R1=6000;
R2=6000;
F=(1/(2*%pi*c*R1));
printf("\nThe freq of oscillation at 6 kohm= %f Hz",F);