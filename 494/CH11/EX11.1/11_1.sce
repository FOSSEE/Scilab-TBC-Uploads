//All the quantities are expressed in SI units

Cp_incompressible = -0.3;                    //Cp for incompressible flow
M = 0.6;                                     //Mach number

//Thus from eq.(11.52)
Cp_compressible = Cp_incompressible/sqrt(1-M^2);

printf("\nRESULTS\n---------\n(a)\The Cp after compressibility corrections is:\n        Cp = %1.3f\n",Cp_compressible)