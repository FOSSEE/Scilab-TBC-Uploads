clear
//Given
Emf=2
Emf1=1.9
Emf2=1.8
R1=0.05
R2=0.06
R3=0.07
R0=5                   //ohm

//Calculation
Emft=Emf+Emf1+Emf2
R=R1+R2+R3
Rt=R+R0
I=Emft/Rt

//Result
printf("\n The reading of the ammeter is  %0.1f  A",I)
