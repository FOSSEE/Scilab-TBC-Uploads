// Example 5_7
clc;funcprot(0);
// Given data
V_f=250;// The speed of flight in m/s
rho_a=0.4;// The density of air in kg/m^3
A_in=1;// The inlet area in m^2
m_f=2;// The mass flow rate of fuel in kg/s
V_e=500;// The speed of exhaust jet in m/s

// Calculation
m_in=rho_a*V_f*A_in;// The mass flow rate of air at inlet in kg/s
m_out=m_in+m_f;// The mass flow rate of air at outlet in kg/s
F=(m_out*V_e)-(m_in*V_f);// The force exerted on the engine by the airframe in N
printf("\nThe value of the force F exerted on the engine by the airframe is %1.1e N",F);


