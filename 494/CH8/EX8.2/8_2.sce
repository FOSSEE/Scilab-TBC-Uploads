//All the quantities are expressed in SI units

T = 320;            //static temperature
V = 1000;           //velocity
gam = 1.4;          //ratio of specific heats
R = 287;            //universal gas constant

//the speed of sound is given by
a = sqrt(gam*R*T);

//the mach number can be calculated as
M = V/a;

printf("\nRESULTS\n---------\nThe Mach number is:\n        M = %1.2f\n",M)