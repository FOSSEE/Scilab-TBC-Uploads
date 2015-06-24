clc;
clear;

printf("\n Example 7.2\n");

rho_sol=1650;//Density of the solution
printf("\n Given \n Density of the solution = %d kg/m^3",rho_sol);
Meu_sol=50e-3;//Viscosity of the solution
printf("\n Viscosity of the solution = %d mN s/m^2",Meu_sol*1e3);
Dt=2.28;//Density of the tank
printf("\n Density of the tank = %.2f m",Dt);
D=0.5;//Diameter of the propeller mixer
printf("\n Diameter of the propeller mixer = %.2f m",D);
H=2.28;//Liquid depth
printf("\n Liquid depth = %.2f m",H);
Za=0.5;//Height of the propeller
printf("\n Height of the propeller = %.1f m",Za);
N=2;//Rotational speed
//In this problem the geometrical arrangement corresponds with the configuration for which the curves in Figure 7.6 are applicable.
Re=D^2*N*rho_sol/(Meu_sol);
Fr=N^2*D/9.81;
//From figure 7.6
Np=0.5;
P=Np*rho_sol*N^3*D^5;
printf("\n\n Calculations:\n Power provided by propeller to the liquid = %.0f W",P);