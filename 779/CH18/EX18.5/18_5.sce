V12 = 0.4; // V12 = V1/V2
T1 = 38+273; n = 1.3; P3 = 112; // back pressure
m = 1.25; R = 0.287;
T2 = ((V12)^(n-1))*T1;
P1 = 700; // in kPa
P2 = P1*(V12)^n;
V2 = (m*R*T2)/P2;
v2 = V2/m ;
A = R*T1 + R*(T1-T2)/(n-1) - P3*v2; // Area of indicator diagram
IO = A*0.85*m;
disp("kJ",IO,"Indicated output is")

