clear
//Given
m=9*10**9                    //C
q1=10*10**-6
q2=5*10**-6
r=0.05

//Calculation
//
F1=m*q1*q2/r**2
F2=m*q1*q2/r**2
F3=sqrt(F1**2+F2**2+(2*F1*F2*cos(120)*180/3.14))

//Result
printf("\n Resultant charge is  %0.0f  N",F3*10**-1)
