clear
//Given
f=50                           //Hz
L=0.318                         //H
Iv=2.3
R=100                            //ohm

//Calculation
//
C=1/((2*%pi*f)**2*L)
Vl=Iv*2*%pi*f*C*10**4
P=Iv**2*R

//Result
printf("\n (i) The value of capacitor is %0.1f  micro F",C*10**6)
printf("\n (ii) Voltage across the inductor is %0.0f  V",Vl)
printf("\n (iii)Total power consumed is %0.3f  W",P)
