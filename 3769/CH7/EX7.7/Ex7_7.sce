clear
//Given
m=1
c=1
a=100                  //W
b=15
t=7.5                   //second
P=1                     //KW
C=860                     //Kcal

//Calculation
A=m*c*(a-b)
B=P*t/60.0
D=B*C
n=A*a/D

//Result
printf("\n Efficiency of the kettle is %0.1f  percentage",n)
