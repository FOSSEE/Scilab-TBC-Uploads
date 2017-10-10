clear
//Given
C=100*10**-12                         //F
L=100*10**-6                           //H
Ev=10
R=100.0                                   //ohm

//Calculation
//
fr=1/(2*%pi*sqrt(L*C))
Iv=Ev/R
Vl=Iv*2*%pi*fr*L
Vc=Iv/(2.0*%pi*fr*C)

//Result
printf("\n (i) Resonant frequency is %0.2f  *10**6 HZ",fr*10**-6)
printf("\n (ii) Current at resonance is %0.3f  A", Iv)
printf("\n (iii) Voltage across L and C is %0.3f  V", Vc)
