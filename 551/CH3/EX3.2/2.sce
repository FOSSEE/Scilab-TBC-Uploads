clc
V=0.6; //m^3
m=3.0; //kg
p=5; //bar
v=V/m;
// At 5 bar: From steam tables
v_g=0.375; //m^3/kg
v_f=0.00109; //m^3/kg
v_fg=v_g - v_f;
x=1-((v_g - v)/v_fg);

disp("(i) Mass and volume of liquid")
m_liq=m*(1-x);
disp("mass of liquid=")
disp(m_liq)
disp("kg")
V_liq=m_liq*v_f;
disp("volume of liquid=")
disp(V_liq)
disp("m^3")

disp("(ii) Mass and volume of vapour")
m_vap=m*x;
disp("mass of vapour=")
disp(m_vap)
disp("kg")
V_vap=m_vap*v_g;
disp("volume of vapour=")
disp(V_vap)
disp("m^3")