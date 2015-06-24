clc
v1=0.3; //m^3/kg
T1=20; //0C
v2=0.55; //m^3/kg
T2=260; //0C
p=1.6*10^5; //Pa

disp("(i)Heat added per kg = ")
Q=integrate('1.5 + 75/(T+45)', 'T', T1,T2);
disp("Q=")
disp(Q)
disp("kJ/kg")


disp("(ii)The work done per kg of fluid")
W=p*(v2-v1)/1000; //kJ/kg
disp("W=")
disp(W)
disp("kJ/kg")


disp("(iii)Change in internal energy")
dU=Q-W;
disp("dU=")
disp(dU)
disp("kJ/kg")


disp("(iv)Change in enthalpy")
dH=Q;
disp("dH=")
disp(dH)
disp("kJ/kg")