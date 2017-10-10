// Ex 50 Page 395

clc;clear;close;
// Given
I12=2000;//A (I12=I1+I2)
R1=0.04;//ohm
R2=0.025;//ohm
rf1=25;//ohm
rf2=20;//ohm
E1=440;//V
E2=420;//V

//E-Vad=V where Vad=I1+V/rf1
//V*(1+R1/rf1)+R1*I1=E1//eqn(1)
//V*(1+R2/rf2)-I1*R2=E2-I12*R2// eqn(2)
A=[(1+R1/rf1),R1;(1+R2/rf2),-R2]; // matrix for solution
B=[E1;E2-I12*R2];//matrix for solution
X=A**-1*B;//solution
V=X(1);//V
I1=X(2);//A
I2=I12-I1;//A
printf("Current for each machine  = %.f A & %.f A ",I1,I2)
Po1=V*I1;//W
Po2=V*I2;//W
printf("\n Power output for each machine = %.1f kW & %.1f kW",Po1/1000,Po2/1000)
//ans in the book are wrong.
