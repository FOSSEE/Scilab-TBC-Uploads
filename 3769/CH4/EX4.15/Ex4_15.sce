clear
//Given
C2=9.0              //micro F
C3=9.0
C4=9.0
C1=3
V=10                   //V

//Calculation
C=1/((1/C2)+(1/C3)+(1/C4))
Cab=C1+C
q=Cab*V

//Result
printf("\n Equivalent capacitance between point A and B is  %0.3f  micro F", Cab)
