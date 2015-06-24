//Example 7_1_u1
clc();
clear;
//To determine the no of modes propogating in the fiber
n1=1.48
n2=1.41
NA=sqrt(n1^2-n2^2)
d=60  //units in micro mts
lamda0=0.8        //units in micro mts
v=(%pi*d*NA)/lamda0
n=v^2/2
printf("Number of modes n=%.2f",n)
//In text book the answer given wrong as n=4.55*10^3    the correct answer is n=5615.50 
