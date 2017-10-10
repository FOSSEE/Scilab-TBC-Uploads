//ques-18.24
//Finding vapour pressure of benzene at 300 K
clc
Hv=7413;//latent heat of vapourization (in cal/mol)
T1=273+80; T2=273+27;//temperature (in K)
P1=760;//mm Hg
R=1.987;//cal/mol/K
//On solving, log(P2/P1) = (Hv*(T2-T1))/(2.303*R*T1*T2)
P2=P1/6.467;
printf("The required vapour pressure is %.2f mm Hg.",P2);
