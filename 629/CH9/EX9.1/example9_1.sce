clear
clc
//Example 9.1 SHEAR STRESS IN COUETTE FLOW
U=1; //speed of upper plate [m/s]
L=3*10^-4; //distance between the plates [m]
mu=1*10^-1; //[N.s/m^2]
tau=mu*U/L //shear stress [N/m^2]
printf("\nThe shear stress on the plates = %.f N/m^2.\n",tau)