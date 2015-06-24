//Example 6_6_u1
clc();
clear;
//To calculate the ratio of stimulated emission to Spontaneous emission
h=6.63*10^-34
c=3*10^8
lamda=694.3*10^-9
kb=1.38*10^-23
T=300
constant=(h*c)/(lamda*kb*T)
R=1/(exp(constant)-1)
printf("The ratio of stimulated emission to Spontaneous emission is R=")
disp(R)
//In text book answer is given R=4.98*10^-14 but the correct answer is R=8.874D-31   
