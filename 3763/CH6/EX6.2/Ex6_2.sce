clear
//
//
//

//Variable declaration
rho=10**10   //resistivity(ohm m)
d=10**-3    //thickness(m)
A=10**4*10**-6    //area(m**2)
V=10**3    //voltage(V)
f=50     //power frequency(Hz)
epsilonr=8
epsilon0=8.84*10**-12
tan_delta=0.1

//Calculation
Rv=rho*d/A 
dl_DC=V**2/Rv      //DC dielectric loss(watt)
C=A*epsilon0*epsilonr/d
dl_AC=V**2*2*%pi*f*C*tan_delta     //AC dielectric loss(watt)

//Result
printf("\n DC dielectric loss is %0.0f  *10**-3 watt",dl_DC*10**3)
printf("\n AC dielectric loss is %0.2f  *10**-3 watt",dl_AC*10**3)
