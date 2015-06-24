clc
V1=0.15; //m^3
V2=0.05; //m^3
Q=-45; //kJ
p1=(5/V1+1.5)*10^5; //N/m^2
p2=(5/V2+1.5)*10^5; //N/m^2
W=integrate('(5/V+1.5)*10^2', 'V', V1, V2);


disp("(i)Change in internal energy = ")
dU=Q-W;
disp("dU=")
disp(dU)
disp("kJ")


disp("(ii) Change in enthalpy")
dH=(dU*10^3+(p2*V2-p1*V1))/10^3;
disp("dH=")
disp(dH)
disp("kJ")