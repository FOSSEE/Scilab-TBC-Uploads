clear
//Given
V=500
d=2*10**-2                //m
v=3*10**7
x=6*10**-2
e=1.8*10**11

//Calculation
//
E=V/d
a=E*e
t=x/v
v1=a*t
T=v1/v
A=atan(T)*180.0/3.14

//Result
printf("\n Angle is %0.1f  degree",A)
