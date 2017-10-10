//Section-14,Example-1,Page no.-PC.120
//To estimate the pH of 0.01 M CH3COONa.
clc;
pK_w=14
B=0.01                //(M)
pK_a=-log10(1.8*10^-5)
pH=(1/2*pK_w)+(1/2*log10(B))+(1/2*pK_a)
disp(pH,'pH of given solution of CH3COONa')
