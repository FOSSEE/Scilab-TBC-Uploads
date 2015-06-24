m = 3; R = 0.287; 
T0 = 300; k = 0.10; // k = dP/P1
Sgen = m*R*k;
I = Sgen*T0;
disp("kW",I,"The rate of energy loss because of the pressure drop due to friction")
