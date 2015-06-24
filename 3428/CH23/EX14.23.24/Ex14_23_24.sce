//Section-14,Example-1,Page no.-PC.118
//To estimate the pH of the given solutions.
clc;
A_NH4Cl=0.01
K_aNH4Cl=(5.6*10^-10)
A_NHCH3_3Cl=0.0025
K_aNHCH3_3Cl=(1.5*10^-10)
pH1=-(1/2*log10(A_NH4Cl))-(1/2*log10(K_aNH4Cl))
disp(pH1,'pH of NH(CH3)3')
pH2=-(1/2*log10(A_NHCH3_3Cl))-(1/2*log10(K_aNHCH3_3Cl))
disp(pH2,'pH of given NH_4Cl')
