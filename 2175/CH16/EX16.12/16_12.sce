clc;
delta_p=0.0002;//bar
d=25;
rho=7600;//assumed to run program
c=1.13;
C=24;
tou=delta_p*10^5*d/(4*10^3);
f=tou/(rho*C^2/2);
alpha=0.125*rho*c*C/(rho*C^2);
disp("heat transfer coefficient is:");;
disp("kW/m^2 K",alpha);
