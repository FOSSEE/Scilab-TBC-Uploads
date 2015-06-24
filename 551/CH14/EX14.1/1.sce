clc
T2=235; //K
P=1.3; //kW

disp("(i) C.O.P. of Carnot refrigerator =")
COP=14000/P/60/60;
disp(COP)


disp("(ii) Higher temperature of the cycle =")
T1=T2/COP + T2;
t1=T1-273;
disp(t1)
disp("0C")


disp("(iii) Heat delivered as heat pump")
Qabs=14000/60; //Heat absorbed
W=P*60;
Q=Qabs+W;
disp("Q=")
disp(Q)
disp("kJ/min")

COP=Q/W;
disp("COP of heat pump =")
disp(COP)