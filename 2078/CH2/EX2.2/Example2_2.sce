//Exa 2.2
clc;
clear;
close;

disp("Two wire dc system : ");
disp("I1=P/V & W=2*I1^2*R1=2*P^2*rho*l/V^2/a1");
disp("Therefore, Volume required, v1 is 2*a1*l=4*P^2*rho*l^2/V^2/W");
disp("Three phase four wire system : ");
disp("I2=P/3/Vas Power by each phase is P/3 & W=3*I1^2*R2=P^2*rho*l/3/V^2/a2");
disp("Therefore, Volume required, v2 is 3.5*a2*l=3.5*P^2*rho*l^2/3/V^2/W");
v2BYv1=3.5/3/4;//
disp("For 3-phase four wire system material required is "+string(v2BYv1)+" times the material required in two wire system.");
