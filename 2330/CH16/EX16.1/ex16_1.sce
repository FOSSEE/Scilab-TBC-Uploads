// Example 16.1
format('v',5)
clc;
clear;
close;
// given data
A=100000;//unit less
R1= 98*10^3;// in Ω
R2= 2*10^3;// in Ω
Vin= 1*10^-3;// in V
B= R2/(R1+R2);// unit less
A_CL= 1/B;// unit less
A_CL= A/(1+A*B);// unit less
// The output voltage 
Vout= Vin*A_CL;// in V
// The error voltage 
Verror= Vout/A;// in V
Vout= Vout*10^3;// in mV
Verror= Verror*10^6;// in µV
disp(Vout,"The output voltage in mV is : ")
disp(Verror,"The error voltage in µV is : ")
