//To find maximum and minimum speeds
clc
//Given:
m=6.5*1000 //kg
k=1.8 //m
deltaE=56*1000 //N-m
N=120 //rpm
//Solution:
//Calculating the maximum and minimum speeds
//We know that fluctuation of energy, deltaE = %pi^2/900*m*k^2*N*(N1-N2), or N1-N2 = (deltaE/(%pi^2/900*m*k^2*N))    .....(i)
//Also mean speed, N = (N1+N2)/2, or N1+N2 = 2*N                                                                     .....(ii)
A=[1 -1; 1 1]
B=[deltaE/(%pi^2/900*m*k^2*N); 2*N]
V=A \ B
N1=round(V(1)) //rpm
N2=round(V(2)) //rpm
//Results:
printf("\n\n Maximum speed, N1 = %d rpm.\n\n",N1)
printf(" Minimum speed, N2 = %d rpm.\n\n",N2)