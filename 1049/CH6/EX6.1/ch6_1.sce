clear;
clc;
V=230;
P=1000;
R=V^2/P;
disp("when firing angle delay is of 45deg");
a=%pi/4;
V_or=(sqrt(2)*V/(2*sqrt(%pi)))*sqrt((%pi-a)+.5*sin(2*a));
P=V_or^2/R;    printf("power absorbed=%.2f W",P);

disp("when firing angle delay is of 90deg");
a=%pi/2;
V_or=(sqrt(2)*V/(2*sqrt(%pi)))*sqrt((%pi-a)+.5*sin(2*a));
P=V_or^2/R;    printf("power absorbed=%.2f W",P);