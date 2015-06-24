//All the quantities are expressed in SI units

gam = 1.4;                    //ratio of specific heats

//(a)
M = 2;                        //Mach number

//the ratio of kinetic energy to internal energy is given by
ratio = gam*(gam-1)*M*M/2;

printf("\n(a)\nThe ratio of kinetic energy to internal energy is:\n\n                        %1.2f\n",ratio)

//similarly for (b)
//(b)
M = 20;

ratio = gam*(gam-1)*M*M/2;

printf("\n(b)\nThe ratio of kinetic energy to internal energy is:\n\n                        %3.0f\n",ratio)