clc
R=287; //J/kg K
y=1.4;
p_atm=10^5; //N/m^2
T1=293; //K
D2=0.025; //m
p1=140*10^3; //N/m^2

A2=%pi/4*D2^2;

disp("(i) Mass rate of flow of air when pressure in the tank is 140 kN/m2 (abs.)")
rho_1=p1/R/T1;
p2=10^5; //N/m^2

m=A2*sqrt(2*y/(y-1)*p1*rho_1*((p2/p1)^(2/y) - (p2/p1)^((y+1)/y)));
disp("m=")
disp(m)
disp("kg/s")


disp("(ii) Mass rate of flow of air when pressure in the tank is 300 kN/m2 (abs.)")
p1=300*10^3; //N/m^2
p2=10^5; //N/m^2
rho_1=p1/R/T1;

disp("The pressure ratio p2/p1 being less than the critical ratio 0.528, the flow in the nozzle will be sonic");

m_max=0.685*A2*sqrt(p1*rho_1);
disp("m_max=")
disp(m_max)
disp("kg/s")