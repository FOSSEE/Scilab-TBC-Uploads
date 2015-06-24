P1 = 101.3e03; P4 = P1; // in Pa
P2 = 8*P1;  P3 = P2;
T1 = 288; Vs = 2000;
V3 = 100; Vc = V3;
V1 = Vs + Vc ;
n = 1.25; R = 287;
V4 = ((P3/P4)^(1/n))*V3;
W = ((n*P1*(V1-V4)*1e-06)/(n-1))*(((P2/P1)^((n-1)/n))-1);
P = (W*800*0.001)/60 ; 
disp("kW",P,"Indicated poer is")
disp("%",100*(V1-V4)/Vs,"Volumetric efficiency is")
m = (P1*(V1-V4)*1e-06)/(R*T1);
m_dot = m*800;
disp("kg/min",m_dot,"Mass flow rate is")
FAD = (V1-V4)*1e-06*800;
disp("m3/min",FAD,"Free air delivery is")
Wt = P1*(V1-V4)*1e-06*log(P2/P1);
n_isothermal = (Wt*800*0.001)/(P*60);
disp("%",100*n_isothermal,"Isothermal efficiency is")
Pi = P/0.85;
disp("kW",Pi,"Input power is")
