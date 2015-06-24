clc
m=1; //kg
p1=7*10^5; //Pa
T1=873; //K
p2=1*10^5; //Pa
T2=523; //K
T0=288; //K
Q=-9; //kJ/kg
cp=1.005; //kJ/kg K
R=0.287; //kJ/kg K
disp("(i) The decrease in availability ")
dA=cp*(T1-T2) - T0*(R*log(p2/p1) - cp*log(T2/T1));
disp("dA=")
disp(dA)
disp("kJ/kg")


disp("(ii) The maximum work")
Wmax=dA; //change in availability
disp("Wmax")
disp(Wmax)
disp("kJ/kg")


disp("The irreversibility")
W=cp*(T1-T2) + Q;
I=Wmax - W;
disp("Irreversibility =")
disp(I)
disp("kJ/kg")
