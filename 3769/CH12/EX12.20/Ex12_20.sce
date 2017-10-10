clear
//Given
E=12
R=30.0                    //ohm
L=0.22 

//Calculation
I0=E/R
I=I0/2.0
P=E*I
dl=(E-(I*R))/L
du=L*I*dl

//Result
printf("\n (i) Energy being delivered by the battery is %0.3f  W", P)
printf("\n (ii) ENergy being stored in the magnetic field of inductor is %0.3f  W",du)
