//all the quantities are expressed in SI units

V_inf = 100.1;                //freestream velocity
p_inf = 101314.1;             //standard sea level pressure
rho_inf = 1.225;              //density of air at sea level

//the dynamic pressure can be calculated as
q_inf = 1/2*rho_inf*(V_inf^2);

//thus the total pressure is given as
p0 = p_inf + q_inf;

printf("\nRESULTS\n--------\nThe total pressure measured by pitot tube is\n              p0 = %6.2f Pa",p0)