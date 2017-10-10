clear
//Given
A=10**-2                           //m**2
a=45                               //degree
B1=0.1                             //T
R=0.5                              //ohm
t=0.7                              //S

//Calculation
//
a1=B1*A*cos(a*3.14/180.0)
a2=0
a3=a1-a2
e=a3/t
I=e/R

//Result
printf("\n Current during this time interval is %0.1f  *10**-3 A",I*10**3)
printf("\n Magnitude of induced emf is %0.0f  *10**-3 V",e*10**3)
