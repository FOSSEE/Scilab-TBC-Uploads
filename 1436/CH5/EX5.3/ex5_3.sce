// Example 5.3, page no-310
clear
clc
Re=10^5
D=40*10^-3
v=10^-6
V1=Re*v/D
A1=(3.14*(40*10^-3)^2)/4
A2=(3.14*(20*10^-3)^2)/4
V2=V1*A1/A2
printf("V2=%.1f m/sec",V2)
