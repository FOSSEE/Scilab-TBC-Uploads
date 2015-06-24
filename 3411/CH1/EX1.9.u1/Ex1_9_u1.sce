//Example 1_9_u1
clc();
clear;
//To calculate diameter of the fifth bright ring
n=5
lamda=5460    //units in armstrongs
lamda=lamda*10^-6    //units in cm
f=400       //units in cm
u=1.5
R=(u-1)*2*f     //units in cm
diameter=sqrt(2*(2*n-1)*lamda*R)
printf("Diameter of the 5th bright ring is %.4fcm",diameter)
//In text book the answer is printed wrong as 0.627cm 
//The correct answer is 6.269 cms
