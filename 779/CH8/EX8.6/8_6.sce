T1 = 353; T2 = 278;
V2 = 2; V1 = 1;
P0 = 100; P1 = 500;
R = 0.287; cv = 0.718;
m = 2;
S = integrate('(m*cv)/T','T',T1,T2) + integrate('(m*R)/V','V',V1,V2); // S = S1-S2
U = m*cv*(T1-T2);
Wmax = U-(T2*(-S));
V1_ = (m*R*T1)/P1;
CA = Wmax-P0*(V1_); // Change in availability
I = T2*S; 
disp("kJ",Wmax,"The maximum work is") 
disp("kJ",CA,"Change in availability is")
disp("kJ",I,"Irreversibility is")

