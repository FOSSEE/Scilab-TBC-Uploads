clear
//Given
Vr=150                     //V
R=75.0                        //ohm
f=50                          //Hz
L=318*10**-3                      //H

//Calculation
//
Iv=Vr/R
Xl=2*%pi*f*L
Vl=Iv*Xl
Z=sqrt(R**2+Xl**2)
Ev=Iv*Z
a=Xl/R
a1=atan(a)*180/3.14

//Result
printf("\n (i) The supply voltage is %0.0f  V",Ev)
printf("\n (ii) The phase angle is %0.2f  degree lag",a1)
