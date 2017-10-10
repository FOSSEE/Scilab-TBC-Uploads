clear
//Given
E0=283                       //V
f=50                            //Hz
R=3.0                           //ohm
L=25.48*10**-3                   //h
C=796*10**-6                       //F
Xl=8

//Calculation
//
Xc=1/(2*%pi*f*C)
Z=sqrt(R**2+(Xl-Xc)**2)
a=atan(Xc/R)*180/3.14
Iv=(E0/sqrt(2))/Z
P=Iv**2*R
a1=cos(a*180/3.14)

//Result
printf("\n (a) The inpedence of the circuit is %0.0f  ohm",Z)
printf("\n (b) The phase difference is %0.1f  degree",a)
printf("\n (c) The power dissipated is %0.0f  W",P)
printf("\n (d) Power factor is %0.1f  lag",a1)
