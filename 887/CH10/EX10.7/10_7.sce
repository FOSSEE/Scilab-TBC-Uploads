clc
//ex10.7
V_1=3;
R_1=20;
//As given voltage source results in forward bias, we assume operating point is on line segment A
//replacing diode with the equivalent circuit
V_2=0.6;
R_2=10;
i_D=(V_1-V_2)/(R_1+R_2);      //KVL around the circuit
disp(i_D*10^3,'current in the circuit in milli-amperes')      //milli-10^-3
