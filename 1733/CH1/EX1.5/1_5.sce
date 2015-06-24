//1.5
clc;
V=100;
R=10;
i=50*10^-3;
t=-0.5*log(1-((i*R/V)))*10^3
printf("t= %.1f ms", t)
disp('So the minimum width of the gate pulse is 2.5 ms')