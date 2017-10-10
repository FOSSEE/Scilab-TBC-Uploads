clc;
clear;
Na=10^15 //doping densities in cm^-3
Nd=10^17 //in cm^-3
V=0.5 //in V
e=1.6*10^-19 //in J
nn0=10^17 //in cm^-3
ni=1.5*10^10 //in cm^-3
Si_bandgap=1.1 //bandgap of silicon in eV
Const=0.0259 //constant value for kT/e in J

//Calculation
//a)
pn0=ni^2/nn0 //in cm^-3
pn=pn0*exp((V)/Const) 

//b)

Vbi=0.6949 //breakdown voltage in V
Vp=Vbi-V //potential already present in V
Vz=Si_bandgap-Vp //Zener breakdown voltage in V

mprintf("a)\n")
mprintf("Total concentration of holes= %.2e cm^-3\n",pn) 
mprintf("b)\n")
mprintf("Additional voltage required= %.4f V",Vz)
