clear
//Given
R1=10.0               //ohm
R2=5.0                //ohm
R3=15                //ohm
Ev=200

//Calculation
//
R=R1+R2+R3
X=R3-(R1+R3)
Z=sqrt(R**2+R1**2)
Iv=Ev/Z
T=X/R
a=-atan(T)*180/3.14
b=cos(a*3.14/180.0)
P=Iv**2*R
printf("\n (i) Circuit current is %0.2f   A",Iv)
printf("\n (ii) Circuit phase angle is %0.2f  degree lead",a)
printf("\n (iii)Phase angle between applied voltage and circuit current  %0.3f  lead",b)
printf("\n (iv)Power consumed is %0.3f  W",P)
