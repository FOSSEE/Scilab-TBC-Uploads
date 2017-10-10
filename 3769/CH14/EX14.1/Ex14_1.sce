clear
//Given
N=100
A=10**-2                     //m**2
B=0.5                        //T
f=500/60.0

//Calculation
//
w=2*%pi*f
E0=N*A*B*w
E=E0*sin(60*3.14/180.0)

//Result
printf("\n Maximum emf produced in the coil is %0.2f  V",E0)
printf("\n Instantaneous value of e.m.f. is %0.1f  V",E)
