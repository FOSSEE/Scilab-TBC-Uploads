// scilab Code Exa 5.1. Calculation on combined cycle power plant

P_gt=1e5; // Power Output in kW
m_g=400; // mass flow rate of the exhaust gas in kg/s
cp_g=1.157; // Specific Heat of gas at Constant Pressure in kJ/(kgK)
x=0.9; // dryness fraction of steam at the turbine exit

// part(a) Determining capacity of the boiler in kg of steam per hour 
p1=90; // steam Pressure at the entry of steam turbine in bar
// from steam tables
t_6s=303.3; // saturation temperature at 90 bar in degree C
t_5s=t_6s;
h_fg=1380.8; // from steam table liquid vapour enthalpy at 90 bar
pp=20; // pinch point in degree C
t_6=t_6s+pp;
h_5s=2744.6;
h_6s=1363.8;

t4=592.6;  // Exhaust gas temperature at gas turbine end in degree C
T4=t4+273; // in Kelvin
p_c=0.1; // Condenser pressure in bar
t7=176;  // Exhaust gas temperature at stack in degree C
T7=t7+273; // in Kelvin
h_7s=191.8; // Specific Enthalpy of water in kJ/kg

m_st=(m_g*cp_g*(t_6-t7))/(h_6s-h_7s);
disp ("tonnes/hr" ,m_st*3.6,"(a)capacity of the boiler in kg of steam per hour is")

// part(b) temperature of steam at turbine entry
t_5=t_6+((m_st*(h_5s-h_6s))/(m_g*cp_g)); // energy balance for the evaporator

h_4s=h_5s+(m_g*cp_g*(t4-t_5)/m_st);
t_4s=540; // in degree C from steam table at p=90 bar
disp("degree celsius",t_4s,"(b)temperature of steam at turbine entry is")

// part(c)steam turbine plant output and thermal efficiency 
h_5=2350;
h_6=2150;
w_st_s=h_4s-h_5;
w_st_g=w_st_s*(m_st/m_g);
P_st=m_st*w_st_s;
disp("MW",P_st/10e02,"(c)Power output of the steam turbine plant is")
q_st=h_4s-h_7s;
n_st=w_st_s/q_st;
disp ("%" ,n_st*100,"thermal Efficiency of staem turbine plant is")

// part(d) thermal efficiency of the combined cycle plant
n_gt=0.2666; // Gas turbine plant Efficiency
w_gt=P_gt/m_g;
q_gt=w_gt/n_gt;
n_c=(w_gt+w_st_g)/q_gt;
disp ("%" ,n_c*100,"(d)thermal Efficiency of combined cycle plant is")
disp("Comment: Error in Textbook, Answers vary due to Round-off Errors")
