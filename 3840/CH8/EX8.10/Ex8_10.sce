clear
//
//
//

//Variable declaration
e=1.6*10**-19    //charge(c)
ni=1.5*10**16    //particle density(per m**3)
mew_e=0.14       //electron mobility(m**2/Vs)
mew_h=0.05       //hole mobility(m**2/Vs)
D=2.33*10**3     //density(kg/m**3)
A=28.09          //atomic weight(kg)
NA=6.025*10**26  //avagadro number 

//Calculation
N=NA*D/A         //number of atoms
n=N/10**8        //electron concentration(per m**3)
p=ni**2/n        //hole concentration(per m**3)
sigma=e*((n*mew_e)+(p*mew_h))          //conductivity(per ohm m)

//Result
printf("\n conductivity is %0.1f  per ohm m",sigma)
