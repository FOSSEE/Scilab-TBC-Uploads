
//Variable declaration
Rh=3.22*10**-4;    //hall coefficient(m**3/C)
e=1.6*10**-19;
rho=8.5*10**-3;    //resistivity(ohm m)

//Calculation
p=1/(Rh*e);      //carrier concentration(per m**3)
mewp=Rh/rho;     //mobility of holes(m**2/Vs)

//Result
printf('carrier concentration is %0.3f    *10**21 per m**3 \n',(p/10**21))
printf('//mobility of holes is %0.3f     m**2/Vs\n',(mewp))