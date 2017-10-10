//Example 1.4
clc();
clear;
//To calculate thickness of plate
//t=(n*lamda)/(u-u1)
n=5
u=1.7
u1=1.4
lamda=4800        //units in armstrongs
lamda=lamda*10^-10   //units in mts
t=(n*lamda)/(u-u1)       //units in mts
printf("Thickness of glass plate is %.6fmts",t)
//In text book the answer is printed wrong as 8*10^-8 mts     
//the correct answer is 8*10^-6   mts
