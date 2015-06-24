//Ex 3.3
clc;clear;close;
G=-10;//Gain
Ri=100;//kohm(input resistance)
R1=Ri;//kohm
R2=-G*R1;//kohm
disp(R1,"Value of R1(kohm)");
disp(R2/1000,"Value of R2(Mohm)");
