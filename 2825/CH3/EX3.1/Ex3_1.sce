//Ex3_1 Pg-127
clc

disp("Refer to the diagram 3.11(b)")
disp("Using ohm''s law")
disp("Vt = Vd1 + Vr1")
Vd1=0.7 //voltage drop in V
Vt=12 //supply voltage in V
R1=1.2*10^3 //resistor R1 in ohm
Vr1=Vt-Vd1 //voltage across R1 in V
It=Vr1/R1 //current in A
disp("Ohm''s law")
printf("\n Current I_t = %.2f mA",It*10^3)
