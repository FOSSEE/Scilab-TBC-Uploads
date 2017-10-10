
//Variable declaration
mewe=0.36;     //mobility of electrons(m**2/Vs)
mewh=0.17;    //mobility of holes(m**2/Vs)
e=1.6*10**-19;
rhoi=2.12;    //resistivity(ohm m)

//Calculation
ni=1/(rhoi*e*(mewe+mewh));     //intrinsic concentration(per m**3)

//Result
printf('intrinsic concentration is %0.3f    *10**16 per m**3 \n',(ni/10**16))