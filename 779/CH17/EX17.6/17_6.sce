g = 1.4;R = 0.287;  d = 1.4; // del 
P0 = 1.4; // in bar
T0 = 280; T1 = T0;
cp = 1.005; A2 = 0.0013
P_ = P0/((g+1)/2)^(d/(d-1)) ; // P_ = P*
P1 = P0; Pb = 1; P2 = Pb;
T2 = T1*(P2/P1)^((d-1)/d);
V2 = sqrt(2*cp*(T1-T2)*1000);
m_dot = (A2*V2*P2*100)/(R*T2);
disp("kg/s",m_dot,"Mass flow rate is")
disp("The mass flow rate can be increased by raising the supply pressure")