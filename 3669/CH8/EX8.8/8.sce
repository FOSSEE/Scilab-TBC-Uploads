
//Variable declaration
Rh=3.66*10**-4;    //hall coefficient(m**3/C)
e=1.6*10**-19;
rhoh=8.93*10**-3;    //resistivity(ohm m)

//Calculation
p=1/(Rh*e);      //carrier concentration(per m**3)
mewp=Rh/rhoh;     //mobility of holes(m**2/Vs)

//Result
printf('carrier concentration is %0.3f *10**22 per m**3    \n',(p/10**22))
printf('//mobility of holes is %0.3f   *10**-2 m**2/Vs  \n',(mewp*10**2))