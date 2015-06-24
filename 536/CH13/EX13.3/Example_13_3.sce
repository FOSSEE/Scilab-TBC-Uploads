clc;
clear;

printf("\n Example 13.3\n");

T=310; //Temperature of moist air
T_w=300; //Wet bulb tempeature
L=2440e3; //Latent heat of vapourisation of water at 300 K
P=105e3; //Given total pressure
P_wo1=3.6e3; //Vapour pressure of water vapour at 300 K
P_wo2=6.33e3; //Vapour pressure of water vapour at 310 K
M_w=18; //Molecular weight of water
M_a=29; //Molecular weight of air

H_w=(P_wo1/(P-P_wo1))*(M_w/M_a); //The humidity of air saturated at the wet-bulb temperature
//Therefore, taking (h/hD*rho*A) as 1.0 kJ/kg K, in equation 13.8:
H=H_w-(1e3/L)*(T-T_w);
printf("\n The humidity of the air = %.3f kg/kg",H);

//In equation 13.2:
x=poly([0],'x');
P_w=roots(H*(P-x)*M_a-M_w*x);
RH=P_w/P_wo2*100;
printf("\n The percentage relative humidity (RH)= %.1f per cent",RH);
