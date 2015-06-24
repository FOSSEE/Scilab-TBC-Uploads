clear
clc
E1=0.6994;//in V
RT_F=0.05913;//in V
E=0.7314;//in V
kRHE_kLHE=10^((E-E1)/RT_F);//
printf('kRHE_kLHE=%.3f',kRHE_kLHE)
K=0.1;//in mol/dm^3
K2=2.1*10^-4;//in mol/dm^3
K1=(K2/(kRHE_kLHE^2));//in mol/dm^3
printf('\nK1=%.2f*10^-5  mol/dm^3',K1/10^-5)
pH1=-log10(sqrt(K2*K))
printf('\npH1=%.3f',pH1)
pH2=-log10(sqrt(K1*K))
printf('\npH2=%.3f',pH2)

//page 545
