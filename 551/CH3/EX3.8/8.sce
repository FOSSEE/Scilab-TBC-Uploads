clc

disp("(i) at 0.75 bar, between 100°C and 150°C")
// At 100 °C
T1=100; //°C
h_sup1=2679.4; //kJ/kg
// At 150 °C
T2=150; //°C
h_sup2=2778.2; //kJ/kg

c_ps=(h_sup2-h_sup1)/(T2-T1);
disp("mean specific heat=")
disp(c_ps)

disp("(ii) at 0.5 bar, between 300°C and 400°C")
T1=300; //°C
h_sup1=3075.5; //kJ/kg
T2=400; //°C
h_sup2=3278.9; //kJ/kg

c_ps=(h_sup2-h_sup1)/(T2-T1);
disp("mean specific heat c_ps=")
disp(c_ps)