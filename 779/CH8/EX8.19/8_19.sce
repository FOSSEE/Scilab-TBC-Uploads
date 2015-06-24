T0 = 300; T = 1500;
Q = -8.5; W = 8.5;
// Case (a)
I = Q*(1-T0/T) + W;
R = Q*(1-T0/T);
disp("kW",I,"and",R,"Rate of availability transfer with heat and the irreversibility rate are")
// Case (b)
T1 = 500;
Ib = - Q*(1-T0/T) + Q*(1-T0/T1);
disp("kW",Ib,"Rate of availability in case b is")
