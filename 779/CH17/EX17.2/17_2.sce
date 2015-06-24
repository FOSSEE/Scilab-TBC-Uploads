P1 = 0.18e03; // in Kpa
R = 0.287; T1 = 310; P0 = 0.1e03;
A1 = 0.11; V1 = 267;
w = (P1/(R*T1))*A1*V1;
g = 1.4;
c1 = sqrt(g*R*T1*1000);
M1 = V1/c1;
A1A_ = 1.0570; // A1/A* A* = A_
P1P01 = 0.68207;
T1T01 = 0.89644;
F1F_ = 1.0284;
A2A1 = 0.44/0.11 ; // A2A1 = A2/A1
A2A_ = A2A1*A1A_;
M2 = 0.135; P2P02 = 0.987; T2T02 = 0.996; F2F_ = 3.46;
P2P1 = P2P02/P1P01;
T2T1 = T2T02/T1T01;
F2F1 = F2F_/F1F_;
P2 = P2P1*P1;
T2 = T2T1*T1;
A2 = A2A1*A1;
F1 = P1*A1*(1+g*M1^2);
F2 = F2F1*F1;
Tint = F2-F1;
Text = P0*(A2-A1);
NT = Tint - Text ;
disp("kN",NT,"Net thrust is") 