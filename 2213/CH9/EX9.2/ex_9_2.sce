//Example 9.2.rheostatic losses and train speed
clc;
clear;
close;
//given data :
format('v',7)
V=600;// in volts
I=300;//in A
Ts=15;// in sec
R=0.1;// in ohm
E_bse=(V/2)-(I*R);
E_bp=V-(I*R);
Tse=(E_bse/E_bp)*Ts;
Tp=Ts-Tse;
Vd=V-(2*I*R);
Ed1=(round((Vd/2)*I*(Tse/3600))*10^-3);//
disp("part (i)")
disp(Ed1,"rheostatic in series,Ed1(kWh) = ")
Ed2=((V/2)/2)*2*I*(Tp/3600)*10^-3;
disp(Ed2,"rheostatic in parallel,Ed2(kWh) = ")
Vm=29;// in kmph
alfa=Vm/Ts;
S=alfa*Tse;
disp("part (ii)")
disp(S,"Speed at the end of series period,S(km/h) = ")
