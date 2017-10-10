clear
//Given
R=200                //ohm
C=15*10**-6             //F
Ev=220                   //V
f=50                    //Hz

//Calculation
//
Xc=1/(2*%pi*f*C)
Z=sqrt(R**2+Xc**2)
Iv=Ev/Z
Vr=Iv*R
Vc=Iv*Xc
V=Vr+Vc
Vrc=sqrt(Vr**2+Vc**2)

//Result
printf("\n (a) The current in the circuit is %0.3f  A",Iv)
printf("\n (b) Voltage across the resistor and capacitor is %0.3f  V",Vrc)
