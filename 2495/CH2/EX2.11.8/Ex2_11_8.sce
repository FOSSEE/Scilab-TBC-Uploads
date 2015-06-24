clear
clc
Kf=1.86;//in Kkg/mol
m=0.2;//amount of aqueous solution of KCL freezes in mol/kg
DelTf_0=Kf*m;//in K
DelTf_1=0.680;//in K
i1=DelTf_1/DelTf_0;//van't hoff factor
printf('i1=%.2f',i1)
v=2;
alpha=(i1-1)/(v-1);//degree of dissociation
printf('\nalpha=%.2f',alpha)
z=1;//valency
mu=(1/2)*((m*z^1)+(m*z^1))
printf('\nmu=%.1f',mu)
i2=v*(1-((0.375+z-z)*(sqrt(mu))))
printf('\ni2=%.4f',i2)
Kb=0.52;//in Kkg/mol
DelTb=i1*Kb*m
printf('\nDelTb=%.3f K',DelTb)
R=8.314;//in J/Kmol
T=273;//in K
P=i1*(m*10^3)*R*T*(1/101325);//osmotic pressure in atm
printf('\nP=%.1f atm',P)

//page 79
