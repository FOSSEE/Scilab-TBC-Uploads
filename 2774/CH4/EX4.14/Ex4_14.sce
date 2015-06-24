clc
// initialization of variables
P1=7000 // inlet pressure in Pa
T1=420 // inlet temperature in degree celsius
V1=400// inlet velocity in m/s
d1=0.200 // inlet diameter in 'm'
V2=700 // exit velocity in m/s
k=1.4 // polytopic index for air
Cp=1000 // specific heat at constant pressure for air in j/kg.K
R=287 // specific gas constant for air
//solution

//part (a)
T2=(((V1**2)-V2**2)/(2*Cp))+T1 // outlet temperature in degree celsius
printf("The exit temperature is "+string(T2)+" *C \n")

//part (b)

rho1=P1/(R*(T1+273)) // density at entrance
A1=(%pi*d1**2)/4
mdot=rho1*A1*V1 // 
printf(" The mass flow rate is "+string(mdot)+" kg/s \n")

// part (c)

rho2=rho1*(((T2+273)/(T1+273))**(1/(k-1))) // density at exit
// now we find the exit diameter
d2=sqrt((rho1*V1*(d1)**2)/(rho2*V2))
printf(" The outlet diameter is "+string(d2)+" m")





