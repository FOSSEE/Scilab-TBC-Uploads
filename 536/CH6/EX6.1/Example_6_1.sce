clc;
clear;

printf("\n Example 6.1");
d_o=25e-3;//Diameter of orifice
printf("\n\n Given:\n Diameter of orifice = %d mm",d_o*1e3);
d_p=75e-3;//Diameter of pipe
printf("\n Diameter of pipe = %d mm",d_p*1e3);
flow_o=300e-6;//Flow rate through pipe
printf("\n Flow rate through pipe = %d m^3/s",flow_o*1e6);
Meu_watr=1e-3;//Viscosity of water
printf("\n Viscosity of water = %d mN s/m^2",Meu_watr*1e3);
area_o=%pi/4*d_o^2;//Area of orifice
printf("\n\n Calculations:\n Area of orifice = %.2f * 10^-4 m^2",area_o*1e4);
vel_o=flow_o/area_o;//Velocity of water through the orifice
printf("\n Velocity of water through the orifice = %.2f m/s",vel_o);
Re_o=d_o*vel_o*1000/Meu_watr;//Re at the orifice
printf("\n Re at the orifice = %d",Re_o);
//From Figure 6.16, the corresponding value of Cd = 0.61 (diameter ratio = 0.33)
Cd=0.61;
G=flow_o*1e3; //mass flow rate water
//Equation 6.21 may therefore be applied:
ho=poly([0],'ho');
p=G^2-((Cd*area_o*1000)^2*2*9.81*ho);
printf("\n Difference in level on a water manometer = %.0f mm of water",roots(p)*1e3);