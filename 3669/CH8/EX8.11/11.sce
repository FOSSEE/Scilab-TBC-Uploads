
//Variable declaration
mewe=0.36;     //mobility of electrons(m**2/Vs)
mewh=0.18;    //mobility of holes(m**2/Vs)
e=1.6*10**-19;
ni=2.5*10**19;     //intrinsic concentration(per m**3)
N=4.2*10**28;    //avagadro number

//Calculation
n=N/10**6;    //electron concentration(per m**3)
p=ni**2/n;    //hole concentration(per m**3)
rhoi=1/(e*((n*mewe)+(p*mewh)));     //resistivity(per ohm m)  

//Result
printf('resistivity is %0.3f   *10**-4 per ohm m  \n',(rhoi*10**4))