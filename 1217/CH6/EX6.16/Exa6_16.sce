// Exa 6.16
clc;
clear;
close;
// given data 
f=2;//in KHz
fi_degree=-135;//in degree
fi_radian=fi_degree*(%pi/180);
disp("A phase shift of -135 degree is achieved by an all pass phase lag filter.");
//assume C=0.1 uF and R1=RF=10 Kohm
C=0.1;//in uF
R1=10;//in Kohm
RF=10;//in Kohm
R=tan(-fi_radian/2)/(2*%pi*f*1000*C*10^-6);
disp("Component values are :");
disp(R1,"Value of R1 in Kohm is :")
disp(RF,"Value of RF in Kohm is :")
disp(R/1000,"Value of R in Kohm is :")
disp(C,"Value of C in uF is :")




