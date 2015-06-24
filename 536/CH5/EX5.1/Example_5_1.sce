clc;
clear;

printf("Example 5.1\n");
id=75e-3; // internal diameter of pipe
printf("\n Given: \n Internal diameter of pipe = %d mm",id*1e3);
f_r_s=0.05; // Flow rate of steam in (kg/s)
printf("\n Flow rate of steam = %.2f kg/s",f_r_s);
f_r_w=1.5; // Flow rate of water in (kg/s)
printf("\n Flow rate of water = %.1f kg/s",f_r_w);
T=330; // Mean Temperature
printf("\n Mean Temperature = %d K",T);
P=120; // Mean Pressure drop
printf("\n Mean Pressure drop = %d kN/m^2",P);
area=%pi*id^2/4; // Cross-sectional area for flow
f_r_w_m3s=f_r_w/1000; // Flow of water
wtr_vel=f_r_w_m3s/area; //Water velocity
rho_steam=18*273*120/(22.4*330*101.3); // density of steam at 330 K and 120 kN/m^2
f_r_s_m3s=f_r_s/rho_steam; //Flow of Steam
steam_vel=f_r_s_m3s/area; //Steam velocity
printf("\n\n Calculations:\n Cross-sectional area for flow = %.5f m^2\n Water velocity = %.3f m/s\n Steam velocity = %.2f m/s",area,wtr_vel,steam_vel);
meu_steam=0.0113e-3;
meu_water=0.52e-3;
Rel=id*wtr_vel*1000/meu_water;
Reg=id*steam_vel*rho_steam/meu_steam;
printf("\n Reynolds no.(water) = %.2f *10^4",Rel*1e-4);
printf("\n Reynolds no.(steam) = %.2f *10^4",Reg*1e-4);
// That is, both the gas and liquid are in turbulent flow. From the friction chart (Figure 3.7), assuming e/d = 0.00015:
// R/(rho*u^2) liq=0.0025     R/(rho*u^2) gas=0.0022
// From equation 3.18:
DPl=4*0.0025*(1000*wtr_vel^2)/id;
DPg=4*0.0022*(rho_steam*steam_vel^2)/id;
X=(DPl/DPg)^0.5;
phi_l=4.35;
phi_g=3.95;
DP_tpf=phi_g^2*DPg;
printf("\n Pressure drop per unit length of pipe = %.0f N/m^2",DP_tpf);
