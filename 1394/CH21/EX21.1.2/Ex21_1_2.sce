

clc
//initialization of variables
Tdisc = 30 // Centigrade
T = 21 // Centigrade
T0 = 18 // Centigrade
R0 = 1.5 // cm
V = 1000 // cc
t = 3600 //seconds
Nu = 0.082 //cm^2/sec
omeg = 2*%pi*10/60 //sec^-1
//Calculations
k = -V*(log((Tdisc-T)/(Tdisc-T0)))/(%pi*(R0^2)*t)// k = h/d*cp cm/sec
alpha = ((1/0.62)*(k)*(Nu^(1/6))*(omeg^(-0.5)))^1.5 // cm^2/sec
//Results
printf("the value of thermal diffusivity is %.1e cm^2/sec",alpha)
