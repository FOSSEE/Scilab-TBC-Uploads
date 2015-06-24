//All the quantities are expressed in SI units

mue = 1.7894e-5;                    //coefficient of viscosity
Me = 3;                             //mach number of upper plate
D = 2.54e-4;                        //distance between the 2 plates
pe = 101000;                        //ambient pressure
Te = 288;                           //temperature of the plates
Tw = Te;
gam = 1.4;                          //ratio of specific heats
R = 287;                            //specific gas constant
Pr = 0.71;                          //Prandlt number
cp = 1004.5;                        //specific heat at constant pressure
tow_w = 72;                         //shear stress on the lower wall

//the velocity of the upper plate is given by
ue = Me*sqrt(gam*R*Te);

//the density at both plates is
rho_e = pe/R/Te;

//the coefficient of skin friction is given by
cf = 2*tow_w/rho_e/ue^2;

//from eq.(16.92)
C_H = cf/2/Pr;

//from eq.(16.82)
h_aw = cp*Te + Pr*ue^2/2;

h_w = cp*Tw;

q_w_dot = rho_e*ue*(h_aw-h_w)*C_H;

printf("\nRESULTS\n---------\nThe heat transfer is given by:\n        q_w_dot = %1.2f x 10^4 W/m2\n",q_w_dot/1e4)