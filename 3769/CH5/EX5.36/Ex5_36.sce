clear
//Given
R1=20.0                       //ohm
R2=10.0                        //ohm
R4=10

//Calculation
Rbd=(R1*R2)/(R1+R2)
Rae=R2+Rbd+R4

//Result
printf("\n The value of resistance is  %0.2f  ohm",Rae)
