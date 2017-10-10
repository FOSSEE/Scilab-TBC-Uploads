clear
//Given
T=6.0
A=6.023*10**23
W=99.0

//Calculation
//
l=0.693/T
N0=A*10**-12/W
A0=l*N0
N=N0*(1/log10(l))
A1=-(l*N)


//Result
printf("\n  Activity in the beginning and after one hour %0.3f  /h",A1*10**-8)
