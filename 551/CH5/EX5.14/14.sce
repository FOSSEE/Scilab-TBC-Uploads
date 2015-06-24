clc
T_e1=493; //K
T_e2=298; //K
T_p1=298; //K
T_p2=273; //K
Amt=15; //tonnes produced per day
h=334.5; //kJ/kg
Q_abs=44500; //kJ/kg
Q_p2=Amt*10^3*h/24/60;
COP_hp=T_p2/(T_p1-T_p2);
W=Q_p2/COP_hp/60;
disp("(i)Power developed by the engine = ")
disp(W)
disp("kW")


disp("(ii) Fuel consumed per hour")
n_carnot=1-(T_e2/T_e1);
Q_e1=W/n_carnot*3600; //kJ/h
fuel_consumed=Q_e1/Q_abs;
disp("Quantity of fuel consumed/hour = ")
disp(fuel_consumed)
disp("kg/h")