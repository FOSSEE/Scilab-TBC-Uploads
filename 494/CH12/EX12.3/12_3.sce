//All the quantities are expressed in SI units
//All the quantities are expressed in SI units

//(a)
M_inf = 2;                       //freestream mach number
rho_inf = 0.3648;                //freestream density at 11 km altitude
T_inf = 216.78;                  //freestream temperature at 11 km altitude
gam = 1.4;                       //ratio of specific heats
R = 287;                         //specific gas constant
m = 9400;                        //mass of the aircraft
g = 9.8;                         //acceleratio due to gravity
W = m*g;                         //weight of the aircraft
S = 18.21;                       //wing planform area
c = 2.2;                         //chord length of the airfoil
alpha = 0.035;                   //angle of attack as calculated in ex. 12.2
T0 = 288.16;                     //ambient temperature at sea level
mue0 = 1.7894e-5;                //reference viscosity at sea level

//thus
a_inf = sqrt(gam*R*T_inf);
V_inf = M_inf*a_inf;

//according to eq.(15.3), the viscosity at the given temperature is
mue_inf = mue0*(T_inf/T0)^1.5*(T0+110)/(T_inf+110);

//thus the Reynolds number can be given by
Re = rho_inf*V_inf*c/mue_inf;

//from fig.(19.1), for these values of Re and M, the skin friction coefficient is
Cf = 2.15e-3;

//thus, considering both sides of the flat plate
net_Cf = 2*Cf;

//(b)
c_d = 4*alpha^2/sqrt(M_inf^2 - 1);

printf("\nRESULTS\n---------\n(a)\n        Net Cf = %1.1f x 10^-3\n(b)\n        cd = %1.2f x 10^-3\n",net_Cf*1e3,c_d*1e3)