clear
//Given
L=1                          //H
Xl=3142.0                     //ohm

//Calculation
//
f=Xl/(2*%pi*L)
C=1/(2.0*%pi*f*Xl)

//Result
printf("\n (i) Value of frequency is %0.0f  ohm",f)
printf("\n (ii) Capacity of a condenser is %0.2f  micro F",C*10**6)
