//Determine (a) the duty cycle and (b) the output power.
//Ts for the buck converter.
//Example 10.4 page no 296
clear
clc
V2=5         //V
V1=12        //V
D=V2/V1
Rl=5        //Ω
V2=5        //V
p0=V2^2/Rl
printf("\n The value of D=%0.3f  ",D)
printf("\n The value of p0=%0.3f  ",p0)
