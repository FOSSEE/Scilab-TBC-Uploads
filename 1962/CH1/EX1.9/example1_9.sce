


//example 1.9
//page 27
clc; funcprot(0);
//initialisation of variable
mu=0.44;
N=300;
t=0.00025;//thickness
R1=0.15;//radius
R2=0.1;//radius
pi=3.14;
T=pi^2*mu*N/60/t*(R1^4-R2^4);
P=T*2*pi*N/60
disp(P,"power lost in (watts)");
clear
