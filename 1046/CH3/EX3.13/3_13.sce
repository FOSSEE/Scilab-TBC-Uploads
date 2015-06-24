//Example 3.13
// calculate the critical  insulation thickness.
d=15*10^-2        //m, length of steam main
t=10*10^-2        //m, thickness  of insulation
ki=0.035          //W/m C, thermal conductivity of insulation
h=10              //W/m^2 C, heat transfer coefficient
//calculation
//from eq. 3.29
ro=ki/h
printf("ro= %f cm \n",ro*10^3)
printf("Radius of bare pipe is larger than outer radius of insulation \n So critical  insulation thickness does not exist ")

