clear
//
//
//

//Variable declaration
n=1
hbar=1.054*10**-34    
m=1.67*10**-27    //mass of neutron(kg)
a=10**-14      //size(m)

//Calculation
E=n**2*%pi**2*hbar**2/(2*m*a**2)     //lowest energy of neutron(J)

//Result
printf("\n lowest energy of neutron is %0.2f  MeV",E/(1.6*10**-13))
