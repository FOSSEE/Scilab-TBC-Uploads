//Section-14,Example-1,Page no.-PC.125
//To determine the pH of the given solution.
clc;
K_a=1.75*10^-5
pK_a=-log10(K_a)
[CH_3COOH]=(1000/(60*100))
[CH_3COONa]=((1.5*1000)/(82*100))
pH=(pK_a+ (log10([CH_3COONa]/[CH_3COOH])))
disp(pH,'pH of the given solution')
