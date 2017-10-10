clear
//Given
n=10
I=3
A=7.85*10**-3
B=10**-2                         //T

//Calculation
//
M=n*I*A
U1=-M*B*cos(0)
Uf=-M*B*cos(90)
w=-U1
t=M*B*sin(90*3.14/180.0)

//Result
printf("\n Work done is %0.1f  *10**-3 Nm",t*10**3)
