clear
clc
Ecell=0;//in V
E1=0;//in V
E2=-0.40;//in V
E=(E1-E2);//in V
T=298;//in K
RT_F=0.05913;//in V
Kw=10^-14;//in moldm^3
Ksp=Kw^2*(10^((-2/RT_F)*(-E)));//in (moldm^3)^2
printf('Ksp=%.2f*10^-15 (moldm^3)^2',Ksp/10^-15 )

dEdT_p=0.002;//in V/K
n=2
F=96500;//inC
DelG=n*F*E1;//change in gibbs energy
printf('\nDelG=%.1d ',DelG)

DelS=n*F*dEdT_p;//change in entropy in J/K
printf('\nDelS=%.1d J/K',DelS)

DelH=DelG+(T*DelS)*10^-3;//change in enthalpy in kJ
printf('\nDelH=%.3f kJ',DelH)

//page 543
