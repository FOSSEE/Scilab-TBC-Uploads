clc
cp1=1.25; //kJ/kg 0C
cp2=2.93; //kJ/kg 0C
L=232; //kJ/kg
T1=-3; //0C
T2=-8; //0C
T3=25; //0C

Q1=cp2*(T3-T1) + L + cp1*(T1-T2); //Heat removed in 8 hours from each kg of fish

Q=Q1*20*1000/8; //Heat removed by the plant /min

disp("(i) Capacity of the refrigerating plant =")
capacity=Q/14000; //tonnes
disp(capacity)
disp("tonnes")

disp("(ii) Carnot cycle C.O.P. between this temperature range.")
T1=298; //K
T2=265; //K

COP=T2/(T1-T2);
disp("COP of reversed carnot cycle =")
disp(COP)


disp("(iii) Power required")
COP_actual=1/3*COP;

W=Q/COP_actual/3600; //kJ/s
disp("Power =")
disp(W)
disp("kW")
