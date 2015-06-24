// Example 8.14, page no-218
clear
clc
ef=2.1
k=1.38*10^-23
T=300//K
e=1.6*10^-19//c
//(i)
p1=0.99
E1=ef+(k*T*log(-1+1/p1))/e

//(ii)
p2=0.01
E2=ef+(k*T*log(-1+1/p2))/e

//(iii)
p3=0.5
E3=ef+(k*T*log(-1+1/p3))/e

printf("\nThe energies for the occupying of delectrons at %d K for the probability of %.2f is %.2f",T,p1,E1)

printf("\nThe energies for the occupying of delectrons at %d K for the probability of %.2f is %.2f",T,p2,E2)

printf("\nThe energies for the occupying of delectrons at %d K for the probability of %.2f is %.2f",T,p3,E3)
