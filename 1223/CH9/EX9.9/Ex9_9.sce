clear;
clc;
//Example 9.9
//Vo=(-1/R1*C2)*integrate((-1)dt) 
x=integrate('(-1)','t',0,1)
Vo=10;
//let y=R1*C2
y=-x/Vo;
printf('\nR1C2=%.2f ms\n',y)
