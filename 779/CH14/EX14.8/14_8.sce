P1 = 2.4; T1 = 0+273;
h1 = 188.9; s1 = 0.7177; v1 = 0.0703;
P2 = 9; T2 = 60+273;
h2 = 219.37;
h2s = 213.27;
h3 = 71.93; h4 = h3;
v1 = 0.0703;
A1V1 = 0.6/60;
m_dot = A1V1/0.0703;
Wc_dot = m_dot*(h2-h1);
Q1_dot = m_dot*(h2-h3);
COP = Q1_dot/Wc_dot;
nis = (h2s-h1)/(h2-h1);
disp("kW",Wc_dot,"Power input is")
disp("kW",Q1_dot,"Heating capacity is")
disp(COP,"COP is")
disp("%",nis*100,"The isentropic compressor efficiency is")