// Chapter 12_The junction field effect transistor
//Caption_Depletion mode JFET
//Ex_3//page 558
T=300
Na=10^18
e=1.6*10^-19
eps=8.85*10^-14*11.7
Vbi=0.814
Vpo=4.35
ni=1.5*10^10
Nd=10^16
a=0.75*10^-4    //metallurgical channel thickness
L=10*10^-4   //channel length
W=30*10^-4    //channel width
mun=1000
Ipi=10^3*mun*(e*Nd)^2*W*a^3/(6*eps*L)
IDmax=Ipi*(1-3*(Vbi/Vpo)*(1-(2/3)*(Vbi/Vpo)^0.5))
printf('The maximum current is %1.3f mA while pinch off current is %1.3fmA',IDmax,Ipi)