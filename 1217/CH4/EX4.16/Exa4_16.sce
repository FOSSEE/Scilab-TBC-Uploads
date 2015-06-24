//Exa 4.16
clc;
clear;
close;
disp("Using superposition theorem, we have output for the fiven two inputs integrator adder as");
disp("Vo=-integrate(V1/R1CF+V2/R2CF,0,t)");
disp("Comparing above expression with the specified output given, we have");
disp("1/R1CF=3 & 1/R2CF=2")
CF=10;//in uF
R1=1/(3*CF*10^-6);//in KOhm
R2=1/(2*CF*10^-6);//in KOhm
disp(R1/1000,"Value of R1 in Kohm is : ");
disp(R2/1000,"Value of R2 in Kohm is : ");