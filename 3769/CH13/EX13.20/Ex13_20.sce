clear
//Given
P=400                          //W
Ev=250                          //V
Iv=2.5                           //A
f=50

//Calculation
//
a=P/(Ev*Iv)
Z=Ev/Iv
R=Z*a
Xl=sqrt(Z**2-R**2)
L=Xl/(2*%pi*f)

//Result
printf("\n (i) The power factor is %0.3f  lag",a)
printf("\n (ii) Resistance of the coil is %0.3f  ohm", R)
printf("\n (iii) Inductance of the coil is %0.3f  H",L)
