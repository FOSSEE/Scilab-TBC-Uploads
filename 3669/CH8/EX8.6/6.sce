//variable declaration
mewe=0.39;     //mobility of electrons(m**2/Vs)
mewh=0.19;    //mobility of holes(m**2/Vs)
e=1.6*10**-19;
ni=2.4*10**19;     //intrinsic concentration(per m**3)  

//Calculation
rhoi=1/(ni*e*(mewe+mewh));           //resistivity(ohm m)     

//Result
printf('resistivity is %0.3f  ohm m   \n',(rhoi))