clear
//Given
F=50                              //HZ
L=0.06 
C=6.8
l=10**6
R=2.5
Ev=230                             //V

//Calculation
//
Xl=2*%pi*F*L
Xc=l/(2*%pi*F*C)
Z=sqrt(R**2+(Xl-Xc)**2)
Iv=Ev/Z
a=(Xl-Xc)/R
a2=-atan(a)*180.0/3.14
P=R/Z
P1=Ev*Iv*P

//Result
printf("\n (i) Circuit impedence is %0.1f  ohm",Z)
printf("\n (ii) Circuit current is %0.3f  A",Iv)
printf("\n (iii) Phase angle is  %0.1f  degree lead",a2)
printf("\n (iv) Power factor is %0.4f  lead",P)
printf("\n (v) Power consumed is %0.2f  W",P1)
