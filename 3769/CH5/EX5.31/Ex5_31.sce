clear
//Given
R1=5                 //ohm
R2=9                  //ohm
R3=14                  //ohm
R4=11
R5=7
R6=18
R7=13
R8=22
V=22

//Calculation
Rec=(R1+R2)*R3/(R1+R2+R3)
Rbe=(R4+R5)*R6/(R4+R5+R6)
Rae=(R7+R2)*R8/(R7+R2+R8)
I=V/Rae

//Result
printf("\n The value of current in the branch AF is  %0.3f  A", I)
