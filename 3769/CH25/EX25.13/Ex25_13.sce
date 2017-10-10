clear
//Given
N=3.67*10**10              //dis/second
r=226.0
A=6.023*10**23

//Calculation
n=A/r
l=N/n
D=0.693/l
a=D/(3600.0*24.0*365.0)

//Result
printf("\n  Half life of radium is %0.0f  years",a)
