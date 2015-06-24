//All the quantities are expressed in SI units

c = 0.64;                                //chord length of the airfoil
V_inf = 70;                              //freestream velocity
L_dash = 1254;                           //lift per unit span L'
rho_inf = 1.23;                          //density of air
mu_inf = 1.789e-5;                       //freestream coefficient of viscosity
q_inf = 1/2*rho_inf*V_inf*V_inf;         //freestream dynamic pressure

//thus the lift coefficient can be calculated as
c_l = L_dash/q_inf/c;

//for this value of C_l, from fig. 4.10
alpha = 4;

//the Reynold's number is given as
Re = rho_inf*V_inf*c/mu_inf;

//for the above Re and alpha values, from fig. 4.11
c_d = 0.0068;

//thus the drag per unit span can be calculated as
D_dash = q_inf*c*c_d;

printf("\nRESULTS\n--------\n\nc_l = %1.2f , for this c_l value, from fig. 4.10we get\nalpha = %1.0f\n------------\n\nRe = %1.2f x 10^6, for this value of Re, from fig. 4.11 we get\nc_d = %1.4f\nD"' = %2.1f N/m\n",c_l,alpha,Re/1000000,c_d,D_dash)