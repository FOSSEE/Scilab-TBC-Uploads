clear;
clc;
L=.006;
C=1.2*10^-6;
R=100;
T=%pi/sqrt(1/(L*C)-(R/(2*L))^2);
T_off=.2*10^-3;
f=1/(2*(T+T_off));    printf("o/p freq=%.2f Hz",f);

disp("for R=40ohm");
R=40;
T=%pi/sqrt(1/(L*C)-(R/(2*L))^2);
T_off=.2*10^-3;
f=1/(2*(T+T_off));    printf("upper limit o/p freq=%.1f Hz",f);

disp("for R=140ohm");
R=140;
T=%pi/sqrt(1/(L*C)-(R/(2*L))^2);
T_off=.2*10^-3;
f=1/(2*(T+T_off));    printf("lower limit o/p freq=%.1f Hz",f);
