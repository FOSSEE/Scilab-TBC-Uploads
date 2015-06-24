clc
//Example 6.9
//Calculate the drop in pressure per unit length in a pipe
dp=0.1//psi
dx=800//ft
//let D represent d/dx
//1 psi = 6895 Pa
//1 m = 3.28 ft
Dp=(dp/dx)*6895*3.28//Pa/m
printf("The drop in pressure per unit length in the pipe is %f Pa/m",Dp);