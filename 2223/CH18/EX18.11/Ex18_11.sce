// scilab Code Exa 18.11 Calculation on combined cycle power plant

P_gt=25.845; // Power Output of gas turbine plant in MW
P_st=21; // Power Output of steam turbine plant in MW
m_gt=115; // mass flow rate of the exhaust gas in kg/s
n_T=0.86; // Turbine Efficiency
gamma_g=1.33;
R=0.287;
cp=(gamma_g/(gamma_g-1))*R; // Specific Heat at Constant Pressure in kJ/(kgK)
T3=1341; // Maximum Temperature in gas turbine in degree K from Ex18.9
p1=84; // steam Pressure at the entry of steam turbine in bar
// from steam tables
t_6s=298.4; // saturation temperature at 84 bar in degree C
h_6s=1336.1; // from steam table liquid vapour enthalpy at 84 bar
pp(1)=20; // pinch point in degree C
pp(2)=28.2;
pp(3)=35;

for i=1:3
    printf("\nfor PP=%d degree C\n",pp(i))
t_6=t_6s+pp(i);
h_4s=3460; // from mollier diagram at t=535 degree C
h_7=2050;
p_c=0.07; // Condenser pressure in bar
T4=875.92974; //from Ex 18.9
t4=T4-273; // in degree C
h_7s=163.4; // Specific Enthalpy of water in kJ/kg

// part(a)steam flow per kg of gas
m_st_gt=cp*(t4-t_6)/(h_4s-h_6s); // steam flow per kg of gas
disp("kg",m_st_gt,"(a)steam flow per kg of gas is")

// part(b)Exhaust gas temperature at stack
t_7=t_6-((m_st_gt*(h_6s-h_7s))/(cp)); // energy balance for the economiser entry(7') to the superheater exit(4')
disp("degree celsius",t_7,"(b)Exhaust gas temperature at stack is")

// part(c)steam turbine plant output
h_7ss=2247;
P_st=m_st_gt*m_gt*(h_4s-h_7ss);
disp("MW",P_st/1e3,"(c)Power output of the steam turbine plant is")

// part(d)thermal efficiency of steam turbine plant
delh4s_7ss=(h_4s-h_7)*n_T;
n_st=delh4s_7ss/(h_4s-h_7s);
disp("%",n_st*100,"(d)thermal Efficiency of steam turbine plant is")

// part(e) thermal efficiency of the combined cycle plant
n_B=0.978; // Assuming Combustion chamber Efficiency
Qs=102.72554; // heat supplied in the combustion chamber from Ex 18.9
Qss=Qs/n_B; // power supplied to the combined cycle
n_gst=(P_gt+(P_st*1e-3))/Qss;
disp("%",n_gst*100,"(e)thermal Efficiency of combined gas and steam power plant is")
end

disp("Comment: Error in Textbook, Answers vary due to Round-off Errors")
