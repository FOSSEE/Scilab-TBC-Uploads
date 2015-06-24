//Section-14,Example-1,Page no.-PC.138
//To find the pH.
clc;
K_w=10^-14
K_b=1.69*10^-9
[B]=0.764
[BH]=0.236
K_a=K_w/K_b
pK_a=-log10(K_a)
pH=pK_a+(log10([B]/[BH]))
disp(pH,'Required pH')

