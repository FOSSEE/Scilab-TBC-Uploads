clear
//Given
R1=4                  //ohm
R2=3                 //ohm
R3=2.0
R11=2.4               //ohm
E=6

//Calculation
X=(R1*R2)/R3
R4=R2+X
R5=R1+R3
Rt=((R4*R5)/(R4+R5))+R11
I=E/Rt

//Result
printf("\n the value of unknown resistance is %0.3f  ohm", X)
printf("\n The current drawn by the circuit is %0.3f  A",I)
