clear
//Given
N=10
I=0.06
r=0.05
n=1000
I2=25

//Calculation
//
A=%pi*r**2
M=N*I*A
u=4*%pi*10**-7
B=u*n*I2
t=M*B*sin(45*3.14/180.0)

//Result
printf("\n Torgue is %0.2f  *10**-4 Nm",t*10**4)
