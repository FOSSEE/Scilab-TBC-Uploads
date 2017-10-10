clc;
clear;
Nd=5*10^16 //Doping level of n-type silicon in cm^-3
Nc=2.8*10^19 //in cm^-3 
e=1.6*10^-19 //in J
phi_B0=1.09 //in eV
epsilon_r=11.7 //in F/cm
epsilon_0=8.85*10^-14 //in F/cm
Const=0.026 //constant for kT/e in V

//Calculation
phi_n=Const*log(Nc/Nd) //in eV
Vbi=(phi_B0-phi_n) //in eV
xn=((2*epsilon_r*epsilon_0*Vbi)/(e*Nd))^0.5
Emax=(e*Nd*xn)/(epsilon_r*epsilon_0)

mprintf("a) Ideal Schottky barrier height= %0.3f eV\n",phi_n)
mprintf("b) Built-in potential barrier= %0.3f V\n",Vbi)
mprintf("c) Space charge width at zero bias= %1.3e cm\n",xn)//The answers vary due to round off error
mprintf("d) maximum electric field= %2.2e V cm^-1",Emax) //The answers vary due to round off error

