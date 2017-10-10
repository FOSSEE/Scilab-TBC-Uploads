clear
//Given
q1=20                          //micro C
q2=-5                          //micro C
a=9*10**9
r=0.1  

//Calculation
q=q1+q2
q3=q/2.0
F=(a*q3*q3)/r**2

//Result
printf("\n Force is  %0.3f  N",F*10**-13)
