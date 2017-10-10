clear
//Given
I=2.4
A=0.30*10**-6
m=9.1*10**-31
n=8.4*10**28
e=1.6*10**-19
E=7.5

//Calculation
J=I/A
t=m*J/(n*e**2*E)

//Result
printf("\n Average relaxation time is  %0.2f *10**-16 S",t*10**16)
