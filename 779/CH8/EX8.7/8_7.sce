P1 = 500; P2 = 100;
T1 = 793; T2 = 573;
cp = 1.005; T0 = 293; R = 0.287;
S21 = (R*log(P2/P1))-(cp*log(T2/T1))
CA = cp*(T1-T2)-T0*S21; // Change in v=availability
disp("kJ/kg",CA,"The decrease in availability is")
Wmax = CA;
disp("kJ/kg",Wmax,"The maximum work is")
Q = -10;
W = cp*(T1-T2)+Q ;
I = Wmax-W;
disp("kJ/kg",I,"The irreversibility is")
// Altenatively
Ssystem = -Q/T0;
Ssurr = -S21;
I1 = T0*(Ssystem+Ssurr);


