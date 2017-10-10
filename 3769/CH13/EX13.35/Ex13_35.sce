clear
//Given
f=50                        //Hz
L=0.5
Ev=100                           //v
R=4                                //ohm

//Calculation
//
C=1/(4*%pi**2*f**2*L)
Ir=Ev/R
Vr=Ir*2*%pi*f*L
Vc=Ir/(2*%pi*f*C)

//Result
printf("\n (i) The capacitance is %0.2f  micro F",C*10**6)
printf("\n (ii) The voltage across inductance and capacitance is %0.0f  V",Vc)
