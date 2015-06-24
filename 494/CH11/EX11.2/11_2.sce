//All the quantities are expressed in SI units

cl_incompressible = 2*%pi;                    //lift curve slope
M_inf = 0.7;                                  //Mach number

//from eq.(11.52)
cl_compressible = cl_incompressible/sqrt(1-M_inf^2);        //compressible lift curve slope

printf("\nRESULTS\n---------\n(a)\The cl after compressibility corrections is:\n        cl = %1.1falpha\n",cl_compressible)