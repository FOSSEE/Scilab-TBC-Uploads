clear
//Given
q=750*10**-6
C1=15*10**-6
V2=20.0                            //V
C3=8*10**-6

//Calculation
V1=q/C1
V=V1+V2
q3=C3*V2
q2=q-q3
C2=q2/V2

//Result
printf("\n The value of V1 is  %0.3f  V", V1)
printf("\n The value of V is  %0.3f  V",V)
printf("\n The value of capacitance is %0.3f  micro F",C2*10**6)
