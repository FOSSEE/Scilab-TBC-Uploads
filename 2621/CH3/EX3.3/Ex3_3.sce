// Example 3.3
clc;
clear;
close;
// Given data
format('v',6);
R1= 100;// in Ω
Rf= 100*10^3;// in Ω
A= 2*10^5;//unit less
Rin= 2*10^6;// in Ω
Rout= 75;// in Ω
f0= 5;// in Hz
B= R1/(R1+Rf);// feedback fraction
AB= A*B;// feedback factor
Af= 1+Rf/R1;// voltage gain
Rin_f= Rin*(1+AB);// input resistance in Ω
Rout_f= Rout/(1+AB);// output resistance in Ω
f_f= f0*(1+AB);// bandwidth in Hz
Rin_f= Rin_f*10^-6;// in MΩ
disp(Af,"The voltage gain is : ");
disp(Rin_f,"The input resistance in MΩ is : ");
disp(Rout_f,"The output resistance in Ω is : ")
disp(f_f,"The bandwidth in Hz is : ");


