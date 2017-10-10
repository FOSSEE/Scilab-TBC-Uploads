clc;
clear;
Nd=10^15 //donor atoms in cm^-3
ni=1.45*10^10 //in cm^-3
k=8.62*10^-5 //in eV/K
T=300 //in K
Const=0.025 //coonstant for kT in eV

//Calculation
//a)
n=10^15 //in cm^-3
p=ni^2/Nd //in cm^-3
delE=Const*log(n/ni) //in eV

//b)
n0=10^15 //in cm^-3
p0=10^12 //in cm^-3
delE_fni=Const*log(n0/ni) //in eV
delE_ifp=Const*log(p0/ni) //in eV

//c)
n1=10^18 //in cm^-3
p1=10^18 //in cm^-3
delE_fni1=Const*log(n1/ni) //in eV
delE_ifp1=Const*log(p1/ni) //in eV

mprintf("a)\nelectron concentration= %.1g cm^-3\n",n)
mprintf("hole concentration= %.2g cm^-3\n",p)
mprintf("Fermi level w.r.t intrinsic fermi level= %0.3f eV\n",delE)
mprintf("b)\nelectron concentration= %.1g cm^-3\n",n0)
mprintf("hole concentration= %.1g cm^-3\n",p0)
mprintf("Quasi fermi level for n-type carrier= %0.3f eV\n",delE_fni)
mprintf("Quasi fermi level for p-type carrier= %0.2f eV\n",delE_ifp)
mprintf("c)\nelectron concentration= %.1g cm^-3\n",n1)
mprintf("hole concentration= %.1g cm^-3\n",p1)
mprintf("Quasi fermi level for n-type carrier= %0.2f eV\n",delE_fni1)
mprintf("Quasi fermi level for p-type carrier= %0.2f eV\n",delE_ifp1)
//The answers vary due to round off error
