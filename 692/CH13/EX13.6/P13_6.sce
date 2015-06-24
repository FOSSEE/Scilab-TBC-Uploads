//Example 13.6
//Decimator computational complexity
clear;
clc;
//no. of multiplications/sec =Rm
FT = input("Sampling Frequency");
N  = input("The order of the FIR Hz");
Rm1 = N*FT;
disp(Rm1,'Rm,FIR = ');
//M = factor of Down sampler
M = input("The Down Sampling factor ");
disp(Rm1/M,'Rm,FIR-DEC = ');
K  = input("The order of the IIR Hz");
Rm2 = (2*K + 1)*FT;
disp(Rm2,'Rm,IIR = ');
disp( (K*FT + ((K+1)*FT/M)),'Rm,IIR-DEC = ');
