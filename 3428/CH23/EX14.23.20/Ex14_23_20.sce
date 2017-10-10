//Section-14,Example-4,Page no.-PC.113
//To calculate the pH in the following cases.
clc;
K_a=7.3*10^-6
c_1=0.23                 //(M)
alpha_1=sqrt(K_a/c_1)
C_1=c_1*alpha_1           //(M)
pH_1=-log10(C_1)
disp(pH_1,'pH of the given weak acid')
c_2=0.2                   //(M)
K_b=4.4*10^-5
alpha_2=sqrt(K_b/c_2)
C_2=c_2*alpha_2                 //[OH-] (M)
pOH=-log10(C_2)
pH_2=14-pOH
disp(pH_2,'pH of CH_3NH_2')
