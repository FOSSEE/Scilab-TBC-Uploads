clear
//
//
//

//Variable declaration
w=72.6    //atomic weight
d=5400    //density(kg/m**3)
Na=6.025*10**26    //avagadro number
mew_e=0.4    //mobility of electron(m**2/Vs)
mew_h=0.2    //mobility of holes(m**2/Vs)
e=1.6*10**-19
m=9.108*10**-31    //mass(kg)
ni=2.1*10**19      //number of electron hole pairs
Eg=0.7    //band gap(eV)
k=1.38*10**-23    //boltzmann constant
h=6.625*10**-34    //plancks constant
T=300     //temperature(K)

//Calculation
sigmab=ni*e*(mew_e+mew_h)    //intrinsic conductivity(ohm-1 m-1)
rhob=1/sigmab     //resistivity(ohm m)
n=Na*d/w     //number of germanium atoms per m**3
p=n/10**5   //boron density
sigma=p*e*mew_h
rho=1/sigma

//Result
printf("\n intrinsic conductivity is %0.3f  *10**4 ohm-1 m-1",sigma/10**4)
printf("\n intrinsic resistivity is %0.3f  *10**-4 ohm m",rho*10**4)
printf("\n answer varies due to rounding off errors")
printf("\n number of germanium atoms per m**3 is %0.1f  *10**28",n/10**28)
