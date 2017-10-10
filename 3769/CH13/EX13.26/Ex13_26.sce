clear
//Given
Ev=200                                           //V
Iv=10.0
f=50                                     //Hz

//Calculation
z=Ev/Iv
R=z*cos(30*3.14/180.0)
Xc=z*sin(30*3.14/180.0)
C=1/(2.0*%pi*f*Xc)

//Result
printf("\n (i) Value of resistance is %0.2f  ohm",R)
printf("\n (ii) Capacitive reactance is %0.0f  ohm",Xc)
printf("\n (iii) Capacitance of the circuit is %0.0f  micro F",C*10**6)
