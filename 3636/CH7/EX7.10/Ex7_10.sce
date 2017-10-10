clc;
clear;
ni=1.5*10^10 //in cm^-3
delE_iF=0.0259 //in eV
delE_cF=0.29 //in eV
phi_G=4.8 //in eV
impurity_conc=9.9*10^14 //in cm^-3
affinity=0.55 //in eV
Const=0.0259 //constant value for kT in eV
x=4.05 //electron affinity for silicon in eV

//Calculation
//a)
n0=ni*exp(delE_iF/Const) //in cm^-3
phi_s=x+delE_cF 

//b)
Ptype_conc=impurity_conc-n0 //net concentration of p-type on B side in cm^-3
delE_iF_Bside=Const*log(Ptype_conc/ni) //in eV
phi_s_Bside=x+delE_iF_Bside+affinity

//d)
ni1=8*10^12 //increased ni in cm^-3
delE_iF1=Const*log(n0/ni1) //in eV
phi_s1=x+(affinity-delE_iF1)

mprintf("electron doping concentration = %.1e cm^-3\n",n0) //The answer provided in the textbook is wrong
mprintf("workfuntion of the semiconductor = %.2f eV\n",phi_s)
mprintf("workfuntion of the semiconductor on B side = %.2f eV\n",phi_s_Bside) //The answer provided in the textbook is wrong
mprintf("workfuntion of the semiconductor at 400K = %.2f eV ",phi_s1) //The answer provided in the textbook is wrong






