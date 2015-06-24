clc
//Initialization of variables
phic=2.5 //V
phia=2 //V
phip=0.1//V
Th=2000 //K
Tc=1000 //K
eff=0.2
k=1.38*10^-23
e=1.6*10^-19
sigma=5.67*10^-12
//calculations
V=phic-phia-phip
Jc=1.2*10^6 *Th^2 *exp(-e*phic/(k*Th))
Ja=1.2*10^6 *Tc^2 *exp(-e*phia/(k*Tc))
J=Jc
Qc1=J*(phic + 2*k*Th/e) + eff*sigma*10^4 *(Th^4 - Tc^4)
eta1=J*0.4/Qc1
eta2=(Th-Tc)/Th
//results
printf("Efficiency of the device = %.1f percent",eta1*100)
printf("\n Carnot efficiency = %d percent",eta2*100)
