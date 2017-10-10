clear
//Given
R2=50.0                     //ohm
R3=50.0                       //ohm
R4=75.0                       //ohm
E=4.75
R1=100

//Calculation
Rbc=1/((1/R2)+(1/R3)+(1/R4))
R=R1+Rbc
I=E/R
R11=I*R1
Vbc=E-(I*R1)
I2=Vbc/R2
I3=Vbc/R3
I4=Vbc/R4

//Result
printf("\n Equivalent resistance of the circuit is  %0.3f  ohm", R)
printf("\n Current in R2 is %0.3f  A",I2)
printf("\n Current in R3 is %0.3f  A",I3)
printf("\n Current in R4 is %0.3f  A",I4)
