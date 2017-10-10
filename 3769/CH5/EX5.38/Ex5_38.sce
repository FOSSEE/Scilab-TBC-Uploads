clear
//Given
R1=3                 //ohm
R2=3
R3=6

//Calculation
Rad=(R1+R2)*R3/(R1+R2+R3)
Rae=(Rad+R1)*R3/(Rad+R1+R3)
Raf=(Rae+R1)*R3/(Rae+R1+R3)
Rab=(Raf+R1)*R2/(Rae+R1+R2)

//Result
printf("\n the effective resistance between the point A and B is %0.3f  Ohm", Rab)
