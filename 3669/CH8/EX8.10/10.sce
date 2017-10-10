
//Variable declaration
mewe=0.14;     //mobility of electrons(m**2/Vs)
mewh=0.05;    //mobility of holes(m**2/Vs)
e=1.6*10**-19;
ni=1.5*10**16;     //intrinsic concentration(per m**3)
A=28.09;     //atomic weight
D=2.33*10**3;    //density(kg/m**3)
Na=6.025*10**26;    //avagadro number

//Calculation
N=Na*D/A;    //number of atoms(per m**3)
n=N/10**8;    //electron concentration(per m**3)
p=ni**2/n;    //hole concentration(per m**3)
sigma=e*((n*mewe)+(p*mewh));     //conductivity(per ohm m)  

//Result
printf('conductivity is %0.3f   per ohm m\n  \n',(sigma)  )