//Example 1_32
clc;
clear;close;

//Given data: 
V=90;//V
Iload=8;//A
t_off=40*10^-6;//s
//Ipeak=2*Iload;//assumed
//V*sqrt(C/L)=2*Iload
C_by_L=(2*Iload/V)^2;
//t_off=%pi/2*sqrt(L*C)
L_into_C=(t_off/%pi*2)^2;
C=sqrt(L_into_C*C_by_L);//F
L=L_into_C/C;//H
disp(L,"Value of L(H)");
disp(C,"Value of C(F)");
