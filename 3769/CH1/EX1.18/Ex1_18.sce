clear
//Given
m=9*10**9
q1=1
q2=100
r=10
q3=75                      //C
r1=5

//Calculation
//
F=m*q1*q2/r**2                   //along BA
F1=m*q1*q2/r**2                   //along AC
F2=m*q3/(sqrt(r**2-r1**2)**2)
F3=sqrt(F1**2+F2**2)
X=F1/F2

//Result
printf("\n Force experienced by 1 C Charge is  %0.2f  N",F3*10**-9)
