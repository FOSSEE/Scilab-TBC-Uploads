// chapter 7 , Example7.18 , pg 217
ni=1.5*10^16     //intrinsic  carrier  density(in m^-3)
Un=0.13     //electron mobility   (in m^2/(V*s))
up=0.05     //hole mobility   (in m^2/(V*s))
e=1.6*10^-19    //charge in electron (in C)
sigma=ni*e*(Un+up)    // electrical conductivity
printf("Electrical conductivity\n")
printf("sigma=%.6f   (ohm*m)^-1",sigma)
