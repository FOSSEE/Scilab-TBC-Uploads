//clear//
clc
clear
exec("4.5data.sci");

G = m/Ac;
bita0 = (G*(1-phi)/(gc*rho*Dp*phi^3))*((150*(1-phi)*mu/Dp)+1.75*G);
bita0 = bita0/(144*14.7);//atm/ft
P = ((1-(2*bita0*L/P0))^.5)*P0;
deltaP = P0 - P;

disp("deltaP")
disp(deltaP)
disp("atm")
