// Exa 7.9
format('v',7)
clc;
clear;
close;
// GIven data
R1 = 10;// in k ohm
R2 = 100;// in k ohm
R3 = 10.1;// in k ohm
R4 = 99;// in k ohm
// Vdaso = Vo2 = V2*(-R2/R1)
//Vdaso = Vo1 = V1*(R4/(R3+R4))*(1+(R2/R1))
//Vo = Vo1+Vo2 = (V1*(R4/(R3+R4))*(1+(R2/R1))) - (V2*(-R2/R1))
//Vo = (R2/R1) * ( -V2 + ( 1+(R1/R2) )/(1+(R3/R4))*V1 )
A1 = (1+(R1/R2))/(1+(R3/R4))*(R2/R1);// (on comparing vo= A1*V1+A2*V2)
disp(A1,"The value of A1 is");
A2 = -R2/R1;
disp(A2,"The value of A2 is");
