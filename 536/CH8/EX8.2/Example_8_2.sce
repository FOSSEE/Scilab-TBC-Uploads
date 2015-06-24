clc;
clear;
printf("\n Example 8.2\n");

rho_l=800; //Density of liquid
printf("\n Given\n Density of liquid = %d kg/m^3",rho_l);
Meu_l=0.5e-3;//Viscosity of liquid
printf("\n Viscosity of liquid = %.1f * 10^-3 N s/m^2",Meu_l*1e3);
Q=0.0004;//Volumetric flow rate
printf("\n Volumetric flow rate = %d m^3/s",Q*1e6);
liq_depth=0.07;
d=25e-3;//Diameter of pipe used
printf("\n Diameter of pipe used = %d",d*1e3);
p_v_r=1e3;//Pressure of vapor in reboiler
printf("\n Pressure of vapor in reboiler = %d kN/m^2",p_v_r*1e-3);
Z=2;//Net Positive Suction Head
printf("\n Net Positive Suction Head = %d m",Z);
A=%pi/4*d^2;//Cross sectional area of pipe
printf("\n\n Calculations:\n Cross sectional area of pipe = %.5f m^2",A);
u=Q/A;//Velocity in pipe
printf("\n Velocity in pipe = %.3f m/s",u);
Re=d*u*rho_l/Meu_l;//Reynolds no.
printf("\n Reynolds no. = %d ",Re);
//From Figure 3.7, the friction factor for a smooth pipe is:
phi=0.0028;
hf_l=(4*phi*u^2)/(d*9.81);
printf("\n head loss due to friction per unit length = %.4f m/m of pipe",hf_l);
//It should be noted that a slightly additional height will be required if the kinetic energy at the pump inlet cannot be utilised.
//Thus the height between the liquid level in the reboiler and the pump, HQ, depends on the length of pipe between the reboiler and the pump.  If this is say 10 m
l=10;
hf=hf_l*l;
//equation 8.26 becomes:
ho=Z+hf;
printf("\n The minimum height required = %.1f m",ho);
