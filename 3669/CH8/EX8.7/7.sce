
//Variable declaration
mewe=0.135;     //mobility of electrons(m**2/Vs)
mewh=0.048;    //mobility of holes(m**2/Vs)
e=1.6*10**-19;
ni=1.5*10**16;     //intrinsic concentration(per m**3)
Nd=10**23;         //doping concentration(per m**3)

//Calculation
sigma=ni*e*(mewe+mewh);     //conductivity(per ohm m)    
p=ni**2/Nd;      //hole concentration(per m**3)
sigman=Nd*e*mewe;     //conductivity(per ohm m)  

//Result
printf('conductivity is %0.3f   *10**-3 per ohm m  \n',(sigma*10**3))
printf('hole concentration is %0.3f  *10**9 per m**3   \n',p/10**9)
printf('conductivity is %0.3f   *10**3 per ohm m  \n',sigman/10**3)