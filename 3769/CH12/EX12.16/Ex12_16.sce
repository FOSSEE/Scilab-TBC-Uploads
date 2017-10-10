clear
//Given
N=4000
l=0.6                              //m
r=16*10**-4                        //m

//Calculation
u=4*%pi*10**-7
L=(u*N**2*((%pi*r)/4.0))/l
Liron=N*L

//Result
printf("\n Inductance of the solenoid is %0.0f  H",Liron)
