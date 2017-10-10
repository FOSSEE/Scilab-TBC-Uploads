clear
//Given
Iv=5                   //A
R=10                   //ohm
Ev=60                  //V
C=400                  //micro F

//Calculation
//
Vr=Iv*R
Vc=sqrt(Ev**2-Vr**2)
Xc=Vc/Iv
f=1/(2.0*%pi*C*Xc)
a=Vc/Vr
a1=atan(a)*180/3.14

//Result
printf("\n The value of supplied frequency is %0.0f  Hz",f*10**6)
printf("\n Phase angle between circuit current and supply voltage is %0.1f  degree lead",a1)
