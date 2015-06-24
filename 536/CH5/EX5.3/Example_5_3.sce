clc;
clear;

printf("\n Example 5.3");

p_s=1.25e-3; // Particle size of sand
printf("\n Given:\n Particle size of sand = %.2f mm",p_s*1e3);
rho_sand=2600; //Density of sand
printf("\n Density of sand = %d kg/m^3",rho_sand);
flow_sand=1; //flow rate of sand in air
printf("\n flow rate of sand in air = %d kg/s",flow_sand);
l=200; //length of pipe
printf("\n length of pipe = %d m",l);
// Assuming a solids:gas mass ratio of 5, then:
flow_air=flow_sand/5;
vol_flow_air=1*flow_air;
printf("\n\n Calculations:\n Volumetric flow rate of air = %.2f m^3/s",vol_flow_air);
//In order to avoid an excessive pressure drop, an air velocity of 30 m/s is acceptable
d=100e-3; // taking nearest standard size of pipe
// For sand of particle size 1.25 mm and density 2600 kg/m3, the free-falling velocity is given in Table 5.3 as:
Uo=4.7;
// In equation 5.37:
area=%pi*d^2/4;
printf("\n The cross-sectional area of a 100 mm ID. pipe = %.5f m^2",area);
Ug=flow_air/area;
Us=Ug-(Uo/(0.468+(7.25*(Uo/rho_sand)^0.5)));
printf("\n Air velocity = %.1f m/s",Ug);
printf("\n solids velocity = %.1f m/s",Us);
//Taking
Meu_air=1.7e-5; // viscosity of air
rho_air=1; // Density of air
Re=(d*Ug*rho_air/Meu_air);
printf("\n Reynolds no. of air alone = %d",Re);
phi=0.004;
//Assuming isothermal conditions and incompressible flow, then, in equation 3.18:
DP_air=(4*phi*l/d)*rho_air*Ug^2/2;
printf("\n Pressure drop due to air = %.1f kN/m^2",DP_air*1e-3);
//and in equation 5.38:
DP_x=2805*DP_air/(Uo*Us^2);
printf("\n Pressure drop due to sand particles = %.1f kN/m^2",DP_x*1e-3);
DP=DP_air+DP_x;
printf("\n The total pressure drop = %.1f kN/m^2",DP*1e-3);