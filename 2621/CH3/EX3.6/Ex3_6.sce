// Example 3.6
clc;
clear;
close;
// Given data
format('v',8);
Rin= 2*10^6;// in Ω
Rout= 75;// in Ω
f0= 5;// in Hz
A= 2*10^5;//unit less
B= 1/2;// feedback fraction (since R1=Rf)
Af= -1;// voltage gain
R1= 330;//in Ω (assume)
Rin_f= R1;// input resistance with feedback in Ω
Rout_f= Rout/(A/2);// output resistance in Ω
f_f= A/2*f0;// in Hz
f_f= f_f*10^-6;// in MHz
disp(Af,"The closed-loop voltage gain is : "); 
disp(Rin_f,"The input resistance in Ω is : ");
disp(Rout_f,"The output resistance in Ω is : ");
disp(f_f,"The bandwidth in kHz is : ");

