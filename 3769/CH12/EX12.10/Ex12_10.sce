clear
//Given
v=72 *(5/18.0)                         //Km/h
B=40*10**-6                    //T
A=40
l=2                           //m
t=1.0
N=1

//Calculation
A=l*v
a=B*A
e=N*a/t

//Result
printf("\n e.m.f generated in the axle of the car %0.3f  mV", e*10**3)
