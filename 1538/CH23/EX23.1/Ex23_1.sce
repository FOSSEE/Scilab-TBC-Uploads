//example-23.1
//page no-681
//given
//length of glass rod and steel rod is equal at 273 K and differ by 1.2 mm at 373 K
T1=273  //K
T2=373  //K
//coefficients of linear expansion af glass and steel are
alphaG=8*10^-6  //per degree C
alphaS=12*10^-6   //per degrees C
//we know that
//lT2=lT1*(1+alpha(T2-T1))
//so for glass rod
//l100G=l0*(1+(alpha1)*(T2-T1))
//similarly for steel rod
//l100G=1.0008*l0   ----(1)
//l100S=lo*(1+(alpha2)*(T2-T1))
//l100S=1.0012*l0  ----------(2)
//we have given that
//l100S-l100G=1.2 mm  ---(3)
//from 1 and 2 put in 3, we get
//1.0012*l0-1.0008*l0=1.2
//so
l0=1.2*10^-3/(0.0012-.0008)  //m
printf ("the length of rod at 0 degrees celcius is %f m",l0)
