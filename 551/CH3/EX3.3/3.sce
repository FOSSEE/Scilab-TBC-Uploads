clc
V=0.05; //m^3
m_f=10; //kg
// From steam tables corresponding to 245 0C
p_sat=36.5; //bar
v_f=0.001239; //m^3/kg
v_g=0.0546; //m^3/kg
h_f=1061.4; //kJ/kg
h_fg=1740.2; //kJ/kg
s_f=2.7474; //kJ/kg.K
s_fg=3.3585; //kJ/kg.K

disp("(i) The pressure=")
disp(p_sat)
disp("bar")

disp("(ii) The mass")
V_f=m_f*v_f;
V_g=V - V_f;
m_g=V_g/v_g;
m=m_f+m_g;
disp("The total mass of mixture=")
disp(m)
disp("kg")

disp("(iii) The specific volume")
v_fg=v_g-v_f;
x= m_g/(m_g+ m_f);
v=v_f+x*v_fg;
disp("specific volume=")
disp(v)
disp("m^3/kg")

disp("(iv)The specific enthalpy")
h=h_f+x*h_fg;
disp("specific enthalpy=")
disp(h)
disp("kJ/kg")

disp("(v)The specific entropy")
s=s_f+x*s_fg;
disp("specific entropy =")
disp(s)
disp("kJ/kg.K")

disp("(vi)The specific internal enegy")
u=h-(p_sat*v*10^2); //kJ/kg
disp("specific internal energy=")
disp(u)
disp("kJ/kg")