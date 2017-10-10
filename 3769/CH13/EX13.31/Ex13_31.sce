clear
//Given
a=65                         //degree
b=20                         //degree
w=3000
L=0.01
E0=400                      //V
I=10
f=50

//calculation
//
a=a-b
Xl=w*L
Z=E0/(I*sqrt(2))
R=Z/sqrt(2)
Xc=Xl-R
C=1/(w*Xc*10**-6)

//Result
printf("\n  The value of C is %0.1f  microF",C)
printf("\n  The value of R is %0.3f  ohm",R)
