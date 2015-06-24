// chapter 7 , Example7.9 , pg 213
ni=2.4*10^19     //intrinsic  carrier  density(in m^-3)
Un=0.39     //electron mobility   (in m^2/(V*s))
up=0.19     //hole mobility   (in m^2/(V*s))
e=1.6*10^-19    //charge in electron (in C)
sigma=ni*e*(Un+up)    // electrical conductivity
printf("Electrical conductivity\n")
printf("sigma=%.3f   (ohm*m)^-1",sigma)
