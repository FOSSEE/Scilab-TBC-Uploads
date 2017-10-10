clear
//Given
Vr=65                        //V
R=100.0                         //ohm
Vl=204
f=50                        //Hz
Vc=415

//Calculation
//
Iv=Vr/R
Xl=Vl/Iv
L=Xl/(2*%pi*f)
Xc=Vc/Iv
C=1/(2*%pi*f*Xc)

//Result
printf("\n (i) Circuit current is %0.3f  A", Iv)
printf("\n (ii) Inductance is %0.0f  H",L)
printf("\n (iii) The value of capacitance is %0.0f  micro F",C*10**6)
