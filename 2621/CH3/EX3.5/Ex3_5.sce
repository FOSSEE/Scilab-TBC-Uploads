// Example 3.5
clc;
clear;
close;
// Given data
format('v',8);
Rin= 2*10^6;// in Ω
Rout= 75;// in Ω
f0= 5;// in Hz
R1= 330;//in Ω
Rf= 3.3*10^3;// in Ω
A= 2*10^5;//unit less
B= R1/(R1+Rf);// feedback fraction
AB= A*B;// feedback factor
Af= -Rf/R1;// colsed-loop voltage gain
Rin_f= R1;// input resistance with feedback in Ω
Rout_f=Rout/(1+AB);// output resistance with feedback in Ω
f_f= f0*(1+AB);// closed-loop bandwidth in Hz
f_f= f_f*10^-3;// in kHz
disp(Af,"The closed-loop voltage gain is : "); 
disp(Rin_f,"The input resistance in Ω is : ");
disp(Rout_f,"The output resistance in Ω is : ");
disp(f_f,"The bandwidth in kHz is : ");



