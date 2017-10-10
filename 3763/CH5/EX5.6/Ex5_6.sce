clear
//
//
//

//Variable declaration
e=1.6*10**-19
m=9.1*10**-31  //mass(kg)
n=6*10**28     //density(per m**3)
tow=10**-14    //relaxation time(s)
T=300    //temperature(K)
k=1.38*10**-23   //boltzmann constant

//Calculation
sigma=n*e**2*tow/m    //electrical conductivity(ohm-1 m-1)
K=n*%pi**2*k**2*T*tow/(3*m)    //thermal conductivity(W/m/K)
L=K/(sigma*T)    //lorentz number(watt ohm K-2)

//Result
printf("\n electrical conductivity is %0.3f  *10**7 ohm-1 m-1",sigma/10**7)
printf("\n thermal conductivity is %0.2f  W/m/K",K)
printf("\n lorentz number is %0.3f  *10**-8 watt ohm K-2",L*10**8)
