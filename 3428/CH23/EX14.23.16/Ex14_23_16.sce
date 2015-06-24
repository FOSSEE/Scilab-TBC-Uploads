//Section-14,Example-2,Page no.-PC.111
//To estimate the pH of 0.10 M NH_3 at 25 degree Celcius.
clc;
K_b=1.8*10^-5
B=0.1
pK_b=-log10(K_b)
pK_w=14
F_pro=sqrt(K_b/B)                      //Fraction protonated
pH=pK_w-(1/2*pK_b)+(1/2*log10(B))
disp(pH,'Required pH')
