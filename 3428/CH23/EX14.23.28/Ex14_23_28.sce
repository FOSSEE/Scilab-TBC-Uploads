//Section-14,Example-3,Page no.-PC.127
//To calculate number of grams of NH_4Cl.
clc;
K_b=1.85*10^-5
pK_b=-log10(K_b)
pH=11.45
pOH=14-pH
C_NH_4Cl=0.05*(10^(pOH-pK_b))
N=(C_NH_4Cl)*53.5
disp(N,'Number of grams of [NH_4Cl] in 1 litre buffer solution')
