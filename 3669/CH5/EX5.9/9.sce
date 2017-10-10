
//Variable declaration
rho=1.54*10**-8;     //resistivity of metal(ohm m)
n=5.8*10**28;     //number of free electrons(per m**3)
e=1.602*10**-19;     //charge(c)
m=9.11*10**-31;     //mass(kg)
E=1*10**2;   //electric field(V/m)
Kb=1.381*10**-23;    //boltzmann constant
T=300;    //temperature(K)

//Calculation
tow=m/(n*e**2*rho);       //relaxation time(s)
vd=e*E*tow/m;    //drift velocity(m/s)
mew=vd/E;        //mobility(m**2/Vs)
Vth=sqrt(3*Kb*T/m);    //thermal velocity(m/s)

//Result
printf('relaxation time is %0.3f  *10**-14 s   \n',(tow*10**14))
printf('drift velocity is %0.3f    m/s \n',(vd))
printf('mobility is %0.3f   *10**-2 m**2/Vs  \n',(mew*10**2))
printf('thermal velocity is %0.3f   *10**5 m/s  \n',(Vth/10**5))