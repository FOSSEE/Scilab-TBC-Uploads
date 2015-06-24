clc
T1=1273; //K
T2=773; //K
e1=0.42;
e2=0.72;
a=5.67*10^(-8);

disp("(i) When the body is grey with ε1 = 0.42")
q=e1*a*(T1^4-T2^4)/10^3; //kW
disp("Heat loss per m2 by radiation =")
disp(q)
disp("kW")

disp("(ii) When the body is not grey")
E_emitted=e1*a*T1^4;
E_absorbed=e2*a*(T2)^4;

q=(E_emitted-E_absorbed)/10^3;
disp("Heat loss per m2 by radiation =")
disp(q)
disp("kW")