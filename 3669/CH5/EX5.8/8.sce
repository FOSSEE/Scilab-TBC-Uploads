
//Variable declaration
rho=1.5*10**-8;     //resistivity of metal(ohm m)
n=6.5*10**28;     //number of free electrons(per m**3)
e=1.602*10**-19;     //charge(c)
m=9.11*10**-31;     //mass(kg)

//Calculation
tow=m/(n*e**2*rho);       //relaxation time(s)

//Result
printf('relaxation time is %0.3f   *10**-14 s  \n',(tow*10**14))