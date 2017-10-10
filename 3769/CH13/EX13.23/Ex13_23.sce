clear
//Given
f1=50.0
L=1
E=100                             //V
I=1.0                             //A
Iv=0.5                            //A
f=0
Ev=100.0                     //V

//Calculation
//
Xl=2*%pi*f*L
R=E/I
Z=Ev/Iv
Xl1=sqrt(Z**2-R**2)
L=Xl1/(2.0*%pi*f1)

//Result
printf("\n The value of resistance is %0.3f  ohm",R )
printf("\n The value of impedence is %0.3f  ohm",Z)
printf("\n Inductance of the coil is %0.2f  H",L)
