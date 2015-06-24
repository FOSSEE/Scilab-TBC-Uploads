//All the quantities are expressed in SI units

M = 3.5;        //Mach number
T = 180;         //static temperature from ex. 7.3
p = 0.3;           //static pressure in atm
gam = 1.4;
R = 287;

//from eq. (8.40)
T0 = T*(1+((gam-1)/2*M*M));

//from eq. (8.42)
p0 = p*((1+((gam-1)/2*M*M))^(gam/(gam-1)));

a = sqrt(gam*R*T);
V = a*M;

//the values at local sonic point are given by
T_star = T0*2/(gam+1);
a_star = sqrt(gam*R*T_star);
M_star = V/a_star;

printf("\nRESULTS\n---------\n        T0 = %3.0f K\n        P0 = %2.1f atm\n        T* = %3.1f k\n        a* = %3.0f m/s\n        M* = %1.2f",T0,p0,T_star,a_star,M_star)