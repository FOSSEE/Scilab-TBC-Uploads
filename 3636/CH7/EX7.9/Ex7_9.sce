clc;
clear;
phi_m=4.3 //work function in eV
xsi=4 //electron affinity in eV
p0=10^17 //in cm^-3
Na=10^17 //in cm^-3
ni=1.5*10^10 //in cm^-3
delE_fc=0.957 //in eV
Const=0.0259 //constant value for kT in eV

//Calculation
delE_if=Const*log(p0/ni)

//a) Before contact
phi_s=xsi+delE_fc 

//b) After contact
phi_B=phi_m-xsi 
eV0=phi_s-phi_m

mprintf("Energy state difference= %.3f eV\n",delE_if)
mprintf(" a)phi_s= %.3f eV\n",phi_s)
mprintf(" b)Forward Bias (phi_B)= %.1f eV\n",phi_B)
mprintf("   eV0= %.3f eV",eV0) //The answer provided in the textbook is wrong

