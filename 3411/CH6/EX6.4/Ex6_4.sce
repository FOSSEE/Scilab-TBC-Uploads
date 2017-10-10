//Example 6_4
clc();
clear;
//To calculate the ratio of populations of two energy levels
h=6.63*10^-34
c=3*10^8
lamda=694.3*10^-9
kb=1.38*10^-23
T=300
n1_n2=exp((h*c)/(lamda*kb*T))
printf("The ratio of Populations of two energy levels is N1/N2=")
disp(n1_n2);
