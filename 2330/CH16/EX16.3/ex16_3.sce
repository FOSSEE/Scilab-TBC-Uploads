// Example 16.3
format('v',6)
clc;
clear;
close;
// given data
A=100000;
R1= 100*10^3;// in Ω
R2= 100;// in Ω
r_in= 2*10^6;// in Ω
r_out= 75;// in Ω
B= R2/(R1+R2);// unit less
// The closed loop input impedence 
r_in_CL= (1+A*B)*r_in;// in Ω
// The closed loop output impedence 
r_out_CL= r_out/(1+A*B);// in Ω
r_in_CL=r_in_CL*10^-6;// in Mohm
disp(r_in_CL,"The closed loop input impedence in MΩ is : ")
disp(r_out_CL,"The closed loop output  impedence in Ω is : ")

