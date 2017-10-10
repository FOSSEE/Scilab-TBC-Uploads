clear
//Given
M=0.075              //kg /mol
m=1.2*10**-6         //kg
A=6.0*10**23         ///mol
t=9.6*10**18
N=170

//Calculation
n=(A*m)/M
l=N/t
T=0.693/l

//Result
printf("\n Half life of K-40 is %0.3f  *10**9 years",T/(24.0*3600.0*365)*10**-9)
