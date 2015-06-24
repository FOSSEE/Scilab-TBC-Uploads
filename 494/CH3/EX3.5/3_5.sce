//all the quantities are expressed in SI units

ratio = 12;        //contraction ratio of wind tunnel nozzle
Cl_max = 1.3;      //maximum lift coefficient of the model
S = 0.56;          //wing planform area of the model
L_max = 4448.22;   //maximum lift force that can be measured by the mechanical balance
rho_inf = 1.225;   //free-stream density of air

//the maximum allowable freestream velocity can be given as
V_inf = sqrt(2*L_max/rho_inf/S/Cl_max);

//thus the maximum allowable pressure difference is given by
delta_p = 1/2*rho_inf*(V_inf^2)*(1-(ratio^-2));

printf("\nRESULTS\n--------\nThe maximum allowable pressure difference between the wind tunnel setling chamber and the test section is\n              delta_p = %4.2f Pa",delta_p)