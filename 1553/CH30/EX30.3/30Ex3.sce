//Chapter 30 Ex 3

clc;
clear;
close;

//(i)
n1=10; r1=3;
C1=factorial(n1)/(factorial(r1)*factorial(n1-r1));

//(ii)
n2=100; r2=98;
C2=factorial(n2)/(factorial(r2)*factorial(n2-r2));

//(iii)
n3=50; r3=50;
C3=factorial(n3)/(factorial(r3)*factorial(n3-r3));

mprintf("10C3=%d \n 100C98=%d \n 50C50=%d",C1,C2,C3);
