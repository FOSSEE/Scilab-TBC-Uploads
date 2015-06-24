clear
clc
E0=0.7991;//in V
RT_F=0.05915;//in V
K1=6.02*10^-8;//
K2=1.995*10^-19;//
E1=(E0-(RT_F*(-log10(K1))));//
printf('E1=%.4f V',E1)
E2=(E0-(RT_F*(-log10(K2))));//
printf('\nE2=%.4f V',E2)

//page 464
