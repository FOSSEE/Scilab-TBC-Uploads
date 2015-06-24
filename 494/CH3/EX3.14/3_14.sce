//All the quantities are expressed in SI units

Cl = 5;                              //lift coefficient of the cylinder
V_by_Vinf = -2 - Cl/2/%pi;            //ratio of maximum to freestream velocity

//thus the pressure coefficient can be calculated as
Cp = 1 - (V_by_Vinf^2);

printf("\nRESULTS\n--------\nThe peak negative pressure coefficient is\n              Cp = %1.2f",Cp)