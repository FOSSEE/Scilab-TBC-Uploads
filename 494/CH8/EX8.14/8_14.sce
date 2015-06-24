//All the quantities are expressedin SI units

p1 = 2527.3;                    //ambient pressure at the altitude of 25 km
T1 = 216.66;                    //ambient temperature at the altitude of 25 km
p0_1 = 38800;                   //total pressure
gam = 1.4;                      //ratio of specific heats
R = 287;                        //universal gas constant
pressure_ratio = p0_1/p1;       //ratio of total to static pressure

//for this value of pressure ratio, mach number is
M1 = 3.4;

//the speed of sound is given by
a1 = sqrt(gam*R*T1)

//thus the velocity can be calculated as
V1 = M1*a1;

printf("\nRESULTS\n---------\nThe Velocity of the airplane is:\n        V1 = %4.0f m/s\n",V1)