clc
Pr=10^-14;..//receiver sensitivity
R=2.5*10^5;
sigma=15;
lambda=0.12;
Gr=2000;..//receiver gain
Gt=2000;..//transmitter gain
pi=3.14;
Ppeak=2.985*(Pr*(4*%pi)^3*R^4/Gt*Gr*sigma*lambda^2);
disp("W",Ppeak,"Minimum peak transmitter power");