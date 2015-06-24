//All the quantities are expressed in SI units

M = 2.79;        //Mach number
T = 320;         //static temperature from ex. 7.3
p = 1;           //static pressure in atm
gam = 1.4;

//from eq. (8.40)
T0 = T*(1+((gam-1)/2*M*M));

//from eq. (8.42)
p0 = p*((1+((gam-1)/2*M*M))^(gam/(gam-1)));

printf("\nRESULTS\n---------\nThe total temperature and pressure are:\n        T0 = %3.0f K\n        P0 = %2.1f atm\n",T0,p0)