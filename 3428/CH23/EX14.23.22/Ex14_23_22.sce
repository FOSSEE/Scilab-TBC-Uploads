//Section-14,Example-6,Page no.-PC.114
//To calculate the pH of 10^-8 M HCl solution.
clc;
C=10^-8    //(M) Concentration of HCl solution 
k_w=10^-14
x1=(-C+sqrt((C)^2-(4*1*(-k_w))))/2                       //(M) Concentration of OH-
x2=(-C-sqrt((C)^2+(4*1*(-k_w))))/2                       //(M) Concentration of OH- 
//since value of x2 is complex so it is rejected.
C_1=C+x1                         //(M) Concentration of (H3O+)
pH=-log10(C_1)
disp(pH,'pH of the given solution')
