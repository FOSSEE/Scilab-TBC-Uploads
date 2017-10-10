clear
//Given
f=50
L=31.8*10**-3                          //H
R=7.0                                    //ohm
Ev=230                                     //V

//Calculation
//
Xl=2*%pi*f*L
Z=sqrt(R**2+Xl**2)
Iv=Ev/Z
T=Xl/R
a=atan(T)*180/3.14
a1=cos(a)*3.14/180.0
P=Iv**2*R
t=55*%pi/(180.0*3.14)

//Result
printf("\n (i) Circuit current is %0.2f  A",Iv)
printf("\n (ii) Phase angle is %0.0f  lag",a)
printf("\n (iii) Power factor is %0.3f  lag",a1*10**3)
printf("\n (iv) Power consumed is %0.0f  W",P)
printf("\n Time lag between voltage maximum and current maximum is %0.2f  *10**-3 S",t*10**1)
