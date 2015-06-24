clear;
clc;
printf("\t\t\tchapter1_example7\n\n\n");
// Identification of all resistances and their values
// Estimation of heat transfer per unit area
// Determination of the inside and outside wall temperatures
printf("\n\t\t\tSolution to part (b)\n");
A=1; // assuming A=1 m^2 for convenience
hc1_avg=(5+25)/2; // taking average of extreme values for hc [W/m^2.K]
Rc1=1/(hc1_avg*A); // resistance on left side of wall [K/W]
printf("\nThe resistance on left side of wall is %.3f K/W",Rc1);
k=(0.38+0.52)/2; // thermal conductivity of common brick in W/M.k
L=0.1; //10 cm converted into m
Rk=(L/(k*A));// resistance of construction material, assume common brick
printf("\nThe resistance of construction material of wall is %.3f K/W",Rk);
Rc2=Rc1;
printf("\nThe resistance on right side of wall is %.3f K/W",Rc2);
printf("\n\n\t\t\tSolution to part (c)\n");
T_inf1=1000; // temperature of exhaust gases in K
T_inf2=283; // temperature of ambient air in K
q=(T_inf1-T_inf2)/(Rc1+Rk+Rc2); // heat transferred per unit area
printf("\nThe Heat transferred per unit area is %d W = %.3f kW",q,q/1000);
printf("\n\n\t\t\tSolution to part (d)\n");
T_in=T_inf1-Rc1*q; //
T_out=T_inf2+Rc2*q;
printf("\nThe inside wall temperature is %d K",T_in);
printf("\nThe outside wall temperature is %d K",T_out);
