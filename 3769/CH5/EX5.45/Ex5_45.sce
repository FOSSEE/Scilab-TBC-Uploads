clear
//Given
R1=2               //ohm
R2=4
R3=6
E=8
r=1

//Calculation
Rac=(R1+R2)*R3/(R1+R2+R3)
I=E/(Rac+r)
I1=I/2.0

//Result
printf("\n Internal resistance is  %0.3f  A", I1)
