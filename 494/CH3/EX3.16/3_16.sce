//All the quantities are expressed in SI units

rho_inf = 0.90926;        //density of air at 3km altitude
V_theta = -75;            //maximum velocity on the surface of the cylinder
V_inf = 25;               //freestream velocity
R = 0.25;                 //radius of the cylinder

//thus the circulation can be calculated as
tow = -2*%pi*R*(V_theta+2*V_inf);

//and the lift per unit span is given as
L = rho_inf*V_inf*tow;

printf("\nRESULTS\n--------\nThe Lift per unit span for the given cylinder is\n              L"' = %3.1f N",L)