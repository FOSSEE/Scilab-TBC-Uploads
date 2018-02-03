clear
//
//
//

//Variable declaration
m=9.11*10**-31      //mass(kg)
rho=1.54*10**-8     //resistivity(ohm m)
e=1.602*10**-19     //charge(c)
E=10**2             //electric field(V/m)
n=5.8*10**28        //number of electrons
Kb=1.381*10**-23    //boltzmann constant
T=300               //temperature(K)

//Calculation
tow=m/(n*e**2*rho)   //relaxation time(s)
vd=e*E*tow/m         //drift velocity(m/s)
mew=vd/E             //mobility(m**2/Vs)
Vth=sqrt(3*Kb*T/m)     //thermal velocity(m/s)

//Result
