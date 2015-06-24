//Example 3.16

clear;

clc;

H0=2;

f0=10*10^3;

Q=4;

nmin=4*(Q^2)*(1+H0);

n=nmin+8;//Assuming n=nmin+8

C2=1*10^(-9);//Assuming C2

C1=C2*n;

R3num1=nmin/n;

R3num2=(1-R3num1)^(1/2);

R3num=1+R3num2;

R3den=2*2*%pi*f0*Q*C2;

R3=R3num/R3den;

R1=R3/H0;

R2=1/(((2*%pi*f0)^2)*R3*C1*C2);

printf("Designed Multiple Feedback Low Pass Filter :")

printf("\nR1=%.2f kohms",R1*10^(-3));

printf("\nR2=%.2f ohms",R2);//Answer in textbook is wrong

printf("\nR3=%.2f kohms",R3*10^(-3));

printf("\nC1=%.2f uF",C1*10^(6));

printf("\nC2=%.2f nF",C2*10^(9));