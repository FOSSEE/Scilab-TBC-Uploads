clear
//
//
//

//Variable declaration
D=2.7*10**3       //density(kg/m**3)
rho=2.7*10**-8    //resistivity(ohm m)
w=26.98           //atomic weight
Na=6.025*10**26   //avagadro number
e=1.6*10**-19     //charge(c)
L=5               //length(m)
R=0.06            //resistance(ohm)
I=15              //current(A)
n=3               //number of electrons

//Calculation
N=n*D*Na/w           //number of conduction electrons(/m**3)
mew=1/(rho*N*e)      //mobility(m**2/Vs)
vd=I*R/(L*rho*N*e)   //drift velocity(m/s)

//Result
printf("\n number of conduction electrons is %0.4f  *10**29 /m**3",N/10**29)
printf("\n mobility is %0.5f  m**2/Vs",mew)
printf("\n drift velocity is %0.1f  *10**-4 m/s",vd*10**4)
