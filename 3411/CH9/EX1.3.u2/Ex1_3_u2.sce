//Example 1_3_u2
clc();
clear;
//To calculate the uncertenity in momentum
h=6.63e-34
deltax=2*%pi*10^-9
deltap=h/(2*deltax)          //units in Kg ms^-1
printf("The uncertenity in momentum is delta p=")
disp(deltap)
printf("Kg ms^-1")
//In text book the answer is printed wrong as 0.53*10^-15 Kg ms^-1 the correct answer is  5.276D-26  Kg ms^-1 
