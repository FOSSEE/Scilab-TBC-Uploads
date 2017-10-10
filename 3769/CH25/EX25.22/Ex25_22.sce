clear
//Given
mp=232.03714
mn=228.02873
m0=4.002603
a=931.5
A=232.0
e=1.6*10**-19
m=1.66*10**-27

//Calculation
M=mp-mn-m0
Q=M*a
K=(A-4)*Q/A
S=sqrt((2*K*e)/(4.0*m))

//Result
printf("\n (i) Kinetic energy is %0.1f  Mev",K)
printf("\n (ii) Speed of particle is %0.1f  *10**7 m/s",S*10**-4)
