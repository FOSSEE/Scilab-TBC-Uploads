clc;
clear;
E1000=8.48*10^5 //Current density for 1000 V in A/cm^2
delE=0.1 //in eV
q=1.6*10^-19 //electron charge in eV
ni=1.5*10^10 //in cm^-3
Nd=10^16 //Donors added to silicon to make it n-type) in cm^-3
gop=10^19 //in cm^-3/s
tau=10^-5 //in s
Const=0.0259 //constant value for kT in eV

//Calculation
//a)
E10000=E1000

//b)
n0=ni*exp(delE/Const)

//c)
deln=gop*tau //in cm^-3
n=n0 //in cm^-3
p=deln //in cm^-3s
delE_np=Const*log((n*p)/ni^2)

mprintf("a)\n")
mprintf("Current density for 1000V potential= %1.2e A/cm^2\n",E10000)
mprintf("b)\n")
mprintf("Doping concentration= %1.1e cm^-3\n",n0) //The answer provided in the textbook is wrong"
mprintf("c)\n")
mprintf("Energy gap= %0.4f eV",delE_np) //The answer provided in the textbook is wrong"
