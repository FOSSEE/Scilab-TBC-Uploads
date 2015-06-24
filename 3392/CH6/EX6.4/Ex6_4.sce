clc
// initialization of variables
clear
// Material specifications
G=77.5 //GPa
// Following values of torsion are obtained from figure
Toa=-12.5 //kN
Tab=-8.5 //kN
Tbc=1.5 //kN
D1=10 //cm
D2 =5 //cm
D3 =D1 //cm
Loa=500 //mm
Lab=400 //mm
Lbc=300 //mm
//calculations
G=G*10^9
Toa=Toa*10^3
Tab=Tab*10^3
Tbc=Tbc*10^3
D1=D1*10^-2
D2=D2*10^-2
D3=D3*10^-2
Loa=Loa*10^-3
Lab=Lab*10^-3
Lbc=Lbc*10^-3
r1=D1/2
Joa=%pi*r1^4/2
tauOA=-Toa*D1/(2*Joa)
r2=D2/2
r3=D3/2
Jbc=%pi*r2^4/2
Jab=%pi*r3^4/2
tauBC=Tbc*D2/(2*Jbc)
tau=max(tauOA,tauBC)
printf('The maximum shear stress is = %.2f M Pa in segment OA',tau/10^6)
// part (b)
psiA=Toa*Loa/(G*Joa)
psiBA=Tab*Lab/(G*Jab)
psiB=psiA+psiBA
psiCB=Tbc*Lbc/(G*Jbc)
psiC=psiB+psiCB
printf('\n PsiA = %.5f rad  PsiB = %.5f rad  PsiC = %.5f rad ',psiA,psiB,psiC)

