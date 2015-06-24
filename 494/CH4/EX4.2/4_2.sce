//All the quantities are expressed in SI units

c = 0.64;                                //chord length of the airfoil
V_inf = 70;                              //freestream velocity
rho_inf = 1.23;                          //density of air
q_inf = 1/2*rho_inf*V_inf*V_inf;         //freestream dynamic pressure
c_m_ac = -0.05                           //moment coefficient about the aerodynamic center as seen from fig. 4.11

//thus moment per unit span about the aerodynamic center is given as
M_dash = q_inf*c*c*c_m_ac;

printf("\nRESULTS\n--------\nThe Moment per unit span about the aerodynamic center is is\n              M"' = %2.1f Nm\n",M_dash)