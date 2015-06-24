// chapter 7 , Example7.20 , pg 217
ni=2.1*10^19     //intrinsic  carrier  density(in m^-3)
Un=0.4     //electron mobility   (in m^2/(V*s))
up=0.2     //hole mobility   (in m^2/(V*s))
e=1.6*10^-19    //charge in electron (in C)
sigma=ni*e*(Un+up)    // electrical conductivity
printf("Electrical conductivity\n")
printf("sigma=%.3f   (ohm*m)^-1",sigma)
