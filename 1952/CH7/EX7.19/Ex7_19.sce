// chapter 7 , Example7.19 , pg 217
ni=2.15*10^13     //intrinsic  carrier  density(in cm^-3)
Un=3900    //electron mobility   (in cm^2/(V*s))
up=1900     //hole mobility   (in cm^2/(V*s))
e=1.6*10^-19    //charge in electron (in C)
sigma_I=ni*e*(Un+up)    // electrical conductivity   (in  (ohm*cm)^-1)
rho_I=1/sigma_I    //intrinsic resistivity
printf("Intrinsic resistivity\n")
printf("rho_I=%.0f   ohm*cm",rho_I)




//Intrisic carrier density is given as 2.15*10^-13  instead of 2.15*10^13
