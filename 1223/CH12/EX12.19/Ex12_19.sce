clear;
clc;
//Example 12.19
//T=b*100/(sqrt(1+(f/10^5)^2) angle=-3tan^-1(f/10^5)
//stable at f180 at which phase becomes -180 degrees
//-3*atan(f180/10^5)=-180
f180=tand(180/3)*10^5;
printf('\nfrequency at -180 degree=%ef Hz\n',f180)
b=0.2;
T=b*100/(sqrt(1+(f180/10^5)^2))^3;
printf('\nmagnitude of the loop gain=%.2f\n',T)
b=0.02;
T=b*100/(sqrt(1+(f180/10^5)^2))^3;
printf('\nmagnitude of the loop gain=%.2f\n',T)
