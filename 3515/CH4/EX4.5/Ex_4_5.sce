// Exa 4.5
format('v',7);
clc;
clear;
close;
// Given data
R_D= 5;// in kΩ
R_D= R_D*10^3;// in Ω
R_SS= 25;// in kΩ
R_SS= R_SS*10^3;// in Ω
I= 0.8;// in mA
I=I*10^-3;// in A
i_D= I/2;// in A
unCox= 0.2;// mA/V^2
unCox= unCox*10^-3;// in A/V^2
WbyL= 100;
// Formula i_D= 1/2*unCox*WbyL*V_OV^2
V_OV= sqrt(2*i_D/(unCox*WbyL));// in V
gm= i_D/V_OV;// in A/V;

// Part (a)
Ad= 1/2*gm*R_D;// in V/V
disp(Ad,"Differential gain in V/V is : ")
Acm= -R_D/(2*R_SS);// in V/V
disp(Acm,"Common mode gain in V/V is ")
CMRR= abs(Ad)/abs(Acm);
CMRRindB= round(20*log10(CMRR));// in dB
disp(CMRRindB,"Common mode rejection ratio in dB is : ")


// Part (b)
disp("Part (b) when output is taken differentially")
Ad= gm*R_D;// in V/V
disp(Ad,"Differential gain in V/V is : ")
Acm= 0;
disp(Acm,"Common mode gain in V/V is ")
// CMRRindB= 20*log10(Ad/Acm) = infinite ;// in dB
disp("Common mode rejection ratio in dB is : ")
disp("infinite");

// Part (c)
disp("Part (c) when output is taken differentially but the drain resistance have a 1% mismatch.")
Ad= gm*R_D;// in V/V
disp(Ad,"Differential gain in V/V is : ")
// delta_R_D= 1% of R_D
delta_R_D= R_D*1/100;// in Ω 
Acm= R_D/(2*R_SS)*delta_R_D/R_D;// in V/V
disp(Acm,"Common mode gain in V/V is ")
CMRRindB= 20*log10(abs(Ad)/abs(Acm));// in dB
disp(CMRRindB,"Common mode rejection ratio in dB is : ")

// Note: In the book, there is putting wrong value of Ad (20 at place of 10) to evaluate the value of CMRR in dB in part(c) , So the answer of CMRR in dB of Part (c) is wrong




