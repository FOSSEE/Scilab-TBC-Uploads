// For Blower
m_dot = 1; R = 0.287; T1 = 343;
P1 = 100; P2 = 2*P1; g = 1.4;
V_dot = (m_dot*R*T1)/P1;
PRb = V_dot*(P2-P1);
disp("kW",PRb,"Power required by the blower is")
// For van compressor
P1v = 1; V21 = 0.7 // V2/V1
P2v = P1v*(1/V12)^g;
V2_dot = 0.7;
V1_dot = 0.7*V_dot;
P3v = 2;
PRv = ((g*P1v*100*V_dot)/(g-1))*((P2v/P1v)^((g-1)/g)-1) + V1_dot*100*(P3v-P2v);
disp("kW",PRv,"Power Required by van compressor is")

