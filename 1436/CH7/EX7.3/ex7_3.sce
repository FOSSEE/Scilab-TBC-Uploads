//Example 7.3, page no-438
clear
clc
//(b)
R=0.5
L=5
p_diff=800
V=10
mu=(3.14*R^4)*p_diff/(8*V*L)
printf("(b)\nmu=%.4f poise =%.2f centipoise",mu,mu*100)
