//Example 9.3.efficiency and speed
clc;
clear;
close;
//given data :
format('v',5)
V=600;// in volts
I=200;//in A
Ts=20;// in sec
R=0.1;// in ohm
E_bse=(V/2)-(I*R);
E_bp=V-(I*R);
Tse=(E_bse/E_bp)*Ts;
Tp=Ts-Tse;
Vd=V-(2*I*R);
Mi=((V*I*Tse)/(2*3600))+((V*I*Tp)/3600);
Er=((Vd/4)*I*(Tse/3600))+(((V/2)/2)*I*(Tp/3600));
El=(I^2*R*Ts)/(3600);
Mo=Mi-Er-El;
eta=(Mo/Mi)*100;
disp("part (a)")
disp(eta,"Starting efficiency,(%) = ")
Vm=80;// in kmph
alfa=Vm/Ts;
S=alfa*Tse;
disp("part (b)")
disp(S,"speed,S(kmph) = ")
