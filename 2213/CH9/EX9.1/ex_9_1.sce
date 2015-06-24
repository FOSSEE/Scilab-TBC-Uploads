//Example 9.1.//energy lost and total energy
clc;
clear;
close;
//given data :
format('v',7)
V=600;// in volts
I=350;//in A
Ts=20;// in sec
R=0.15;// in ohm
E_bse=(V/2)-(I*R);
E_bp=V-(I*R);
Tse=(E_bse/E_bp)*Ts;
Tp=Ts-Tse;
Vd=V-(2*I*R);
Ed1=(Vd/2)*I*(Tse/3600);
Ed2=((V/2)/2)*2*I*(Tp/3600);
El=(Ed1+Ed2)*10^-3;
disp("part (a)")
disp(El,"Energy lost in starting rhestat,El(kWh) = ")
El_1=(2*(I^2)*R*Ts)/(3600*1000);
disp("part (b)")
disp(El_1,"Energy lost in  motors,El(kWh) = ")
//answer is wrong in  part b in the textbook
Et=((V*I*Tse)+(2*V*I*Tp))/(3600*1000);
disp("part (c)")
disp(Et,"Total Energy,Et(kWh) = ")
