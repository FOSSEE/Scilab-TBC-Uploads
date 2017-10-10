clear
//Given
R1=12                     //ohm
R2=6                      //ohm

//Calculation
Rdg=R1*R2/(R1+R2)
Rch=R1*R2/(R1+R2)
Rab=Rdg+Rch

//Result
printf("\n The equivalent resistance is  %0.3f  ohm", Rab)
