//example 1.8
//page 24
clc; funcprot(0);
//initialisation of variable
R1=0.05;//radius 1
R2=0.05+0.00002;//radius 2
L=0.2;
N=30/60;//omega
t=R2-R1;
pi=3.14;
mu=0.44;//viscosity
//part1
U=pi*N*0.1;
T=R1^2*2*pi*U/t*mu*L;//torque
disp(T,"torque applied (Nm)=");
//part2
T=R1*2*pi*mu*L*U/log(R2/R1);
disp(T,"torque applied (Nm)=");
clear
