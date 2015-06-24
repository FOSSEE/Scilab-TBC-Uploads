clc
clear
//input
q=2.4*10^-19 //charge1
Q=3.8*10^-19//charge2
ep=8.85*10^-12//permittivity of free space
G=6.7*10^-11
m=8.9*10^-31//mass 1
M=1.5*10^-30//mass 2
//calculation
x=q*Q/(4*%pi*ep*m*M*G)//coulumbs law
//output
printf("the ratio of electrostatic force between charges %3.3e",x)
