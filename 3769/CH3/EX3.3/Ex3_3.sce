clear
//Given
m=9*10**9
q=16*10**-10                //C
r=0.1
r1=0.06
q1=12*10**-10

//Calculation
Vb=m*q/r
Vb1=m*q/r1
V=Vb1-Vb
W=q1*V

//Result
printf("\n Workdone is  %0.3f  *10**-8 J", W*10**8)
