clear
//Given
P=80                         //W
V=100.0                          //v
V1=200                             //V
f=50                               //Hz

//Calculation
//
Iv=P/V
Vc=sqrt(V1**2-V**2)
Xc=Vc/Iv
C=1/(2.0*%pi*f*Xc)

//Result
printf("\n Capcitance of a capacitor is %0.1f  micro F",C*10**6)
