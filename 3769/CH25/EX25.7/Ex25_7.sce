clear
//Given
M=4.001509                    //a.m.u
N=1.008666
N1=1.007277
a=1.66*10**-27
c=3*10**8
e=1.6*10**-19
n=4.0

//Calculation
A=2*N1+2*N
M1=A-M
Eb=M1*a*c**2/e
B=Eb/n

//Result
printf("\n (i)  Mass defect is %0.3f  a.m.u",M1)
printf("\n (ii) Binding energy is %0.1f  Mev",Eb*10**-6)
printf("\n  Binding energy per nucleon is %0.2f  Mev",B*10**-6)
