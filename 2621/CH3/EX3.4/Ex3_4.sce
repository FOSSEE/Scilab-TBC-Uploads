// Example 3.4
clc;
clear;
close;
// Given data
format('v',9);
Rin= 2*10^6;// in Ω
Rout= 75;// in Ω
f0= 5;// in Hz
A= 2*10^5;//unit less
B=1;// for voltage follower
Rf= 0;
Af= 1;// voltage gain (since Rf=0)
Rin_f= A*Rin;// input resistance in Ω
Rin_f= Rin_f*10^-9;// in GΩ
Rout_f= Rout/A;//output resistance in Ω
f_f= f0*A;// bandwidth in Hz
f_f= f_f*10^-6;// in MHz
disp(Af,"The voltage gain is : ");
disp(Rin_f,"The input resistance in GΩ is : ");
disp(Rout_f,"The output resistance in Ω is : ")
disp(f_f,"The bandwidth in MHz is : ");


