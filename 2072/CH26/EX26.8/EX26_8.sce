//Chapter 26
clc
//Example 8
//given
c=3*10^8 //velocity of light in m/sec
m=0.511 //rest energy of electron in Mev
v=0.85*c
gamma=1/sqrt(1-(v^2/c^2))
E=(m)*gamma
disp(E,"total energy of an electron in Mev")
K=E-m
disp(K,"Kinetic energy of electron in Mev is")


