clear
//Given
C4=6                    //micro F
C5=12        
C1=8.0
C7=1

//Calculation
Cs=C4*C5/(C4+C5)
C11=(C1*Cs)/(C1+Cs)
Cs1=C1*C7/(C1+C7)
Cp=C11+Cs1
C=1/(1-(1/Cp))

//Result
printf("\n The value of capacitance C is  %0.2f  micro F",C)
