//All the quantities are expressed in SI units

p =101000;                //static pressure
T = 320;                  //static temperature
v = 1000;                 //velocity
gam = 1.4;                //ratio of specific heats
R = 287;                  //universal gas constant
cp = gam*R/(gam-1);       //specific heat at constant pressure

//from eq.(7.54), the total temperature is given by
T0 = T + (v^2)/2/cp;

//from eq.(7.32),the total pressure is given by
p0 = p*((T0/T)^(gam/(gam-1)));

p0_atm = p0/101000;


printf("\nRESULTS\n--------\nThe total temperature and pressure are given by:\n        T0 = %3.1f K\n\n        P0 = %2.1f atm\n",T0,p0_atm)