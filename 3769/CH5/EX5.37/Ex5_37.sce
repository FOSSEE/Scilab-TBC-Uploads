clear
//Given
R1=2.0                     //ohm
R2=3                         //ohm
R3=2.8
E=6                              //V

//Calculation
Rab=R1*R2/(R1+R2)
Rt=Rab+R3
I=E/Rt
Vab=I*Rab
I1=Vab/2.0

//Result
printf("\n The steady state current is  %0.3f  A", I1)
