clear
//Given
n=125
I=20*10**-3                       //A
B=0.5                             //T
A=400*10**-6                       //m**2
K=40*10**-6

//Calculation
T=n*I*B*A
a=T/K

//Result
printf("\n (i) Torque exerted is %0.3f  *10**-4 Nm", T*10**4)
printf("\n (ii) Angular deflection of the coil is %0.3f  degree", a)
