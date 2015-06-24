// Example 16.2
format('v',6)
clc;
clear;
close;
// given data
A=20000;
B= 0.02;
Vin= 1;// in mV
Vin= Vin*10^-3;// in V
// The closed loop voltage gain,
A_CL= A/(1+A*B);
// The output voltage,
Vout= Vin*A_CL;// in V
// The error voltage,
Verror= Vout/A;// in V
Vout= Vout*10^3;// in mV
Verror= Verror*10^6;// in µV
disp(A_CL,"The value of A_CL is : ");
disp(Vout,"The value of Vout in mV is : ")
disp(Verror,"The value of Verror in µV is : ")
