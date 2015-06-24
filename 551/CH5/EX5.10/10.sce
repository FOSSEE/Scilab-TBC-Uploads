clc
one_ton_of_refrigeration=210; //kJ/min
Cooling_required=40*(one_ton_of_refrigeration); //kJ/min
T1=303; //K
T2=238; //K
COP_refrigerator=T2/(T1-T2);
COP_actual=0.20*COP_refrigerator;
W=Cooling_required/COP_actual/60;
disp("power required = ")
disp(W)
disp("kW")