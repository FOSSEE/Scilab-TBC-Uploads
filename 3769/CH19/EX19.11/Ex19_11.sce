clear
//Given
v0=15.0                      //cm
f0=3.0                        //cm
D=25
fe=9

//Calculation
u0=1/((1/v0)-1/f0)
M=-(v0*D)/(u0*fe)

//Result
printf("\n Magnifying power is %0.1f  ",M)
