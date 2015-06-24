m = 0.5;
P1 = 80e03; T1 = 273+60;
P2 = 0.4e06;
R = 0.287;
V1 = (m*R*T1)/P1 ;
g = 1.4; // Gamma
T2 = T1*(P2/P1)^((g-1)/g);
W12 = (m*R*(T1-T2))/(g-1);
V2 = V1*((P1/P2)^(1/g));
W23 = P2*(V1-V2);
W = W12+W23;
V3 = V1;
T3 = T2*(V3/V2);
cp = 1.005;
Q = m*cp*(T3-T2);
disp("kJ",W,"The work transfer for the whole path is")
disp("kJ",Q,"The heat transfer for the whole path")