clear
//Given
a=6.023*10**23
m=63.5*10**-3
d=9*10**3
A=10**-7                   //m**2
e=1.6*10**-19                   //C
I=1.5                           //a
K=1.38*10**-23                 //J/K
T=300                           //K
Vd=1.1*10**-3
C=3*10**8

//Calculation
//
n=a*d/m
Vd=I/(n*A*e)
V=sqrt((3*K*T*a)/m)
V1=Vd/V
E=Vd/C

//Result
printf("\n (i) Thermal speeds of copper atoms at ordinary temperatures are  %0.2f  *10**-6 m/s",V1*10**6)
printf("\n (ii) Speed of propagation of electric fild is  %0.1f *10**-12 ",E*10**12)
