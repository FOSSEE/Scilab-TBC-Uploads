clear
//Given
f=50                        //Hz
L=0.03
R=8                          //ohm
Ev=240                       //V

//Calculation
//
Xl=2*%pi*f*L
Z=sqrt(R**2+Xl**2)
Iv=Ev/Z
P=Iv**2*R
a=R/Z
Xc=2*Xl
C=1/(2*%pi*f*Xc)

//Result
printf("\n (i) The value of current is %0.2f   A",Iv)
printf("\n   The value of power is %0.0f  W",P)
printf("\n   Power factor is %0.2f  lag",a)
printf("\n (ii) The vaue of capacitance is %0.0f  micro F",C*10**6)
