// chapter 7 , Example7.16 , pg 216
ni=2.5*10^19     //intrinsic  carrier  density(in m^-3)
Un=0.39     //electron mobility   (in m^2/(V*s))
up=0.19     //hole mobility   (in m^2/(V*s))
e=1.6*10^-19    //charge in electron (in C)
l=10^-2       //length   (in m)
A=10^-3*10^-3     //area (in m^2)
sigma=ni*e*(Un+up)    // electrical conductivity   (in  (ohm*m)^-1)
R=l/(sigma*A)      //Resistance
printf("Resistance of intrinsic Ge rod\n")
printf("R=%.0f   ohm",R)
