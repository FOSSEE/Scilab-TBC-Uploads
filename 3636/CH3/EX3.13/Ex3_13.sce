clc;
clear;
E_fi=0.35 //in eV
ni=1.5*10^10 //in cm^-3
q=1.6*10^-19 //in eV
myu_n=1400 //in cm^2/Vs
myu_p=500 //in cm^2/Vs
Const=0.0259 //constant value for kT in eV

//Calculation
//a)
n0=ni*exp((E_fi)/Const)

//c)
//doped substrate
sigma=q*(myu_n*n0) //in ohm^-1 cm^-1
rho=1/sigma

//undoped substrate
sigma1=q*(ni*(myu_n+myu_p))
rho1=1/sigma1

mprintf("a)Doping value= %1.3e cm^-3\n",n0)
mprintf("c)resistivity of the doped pieces of silicon= %.4f ohm-cm\n",rho)
mprintf("c)resistivity of the undoped pieces of silicon= %.1e ohm-cm",rho1) //The answers vary due to round off error
