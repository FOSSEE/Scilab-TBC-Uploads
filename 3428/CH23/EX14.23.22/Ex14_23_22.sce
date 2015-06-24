//Section-14,Example-6,Page no.-PC.114
//To calculate the pH of 10^-8 M HCl solution.
clc;
k_w=10^-14
x=9.5*10^-8
C_1=10^-8+x
pH=-log10(C_1)
disp(pH,'pH of the given solution')
