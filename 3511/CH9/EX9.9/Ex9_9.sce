clc;
rp=1.35; // Actual pressure ratio
DelT_rise=30; // Actual temperature rise in K
beta_1=47; // Inlet blade angle in degree
beta_2=15; // Outlet blade angle in degree
u=225; // Peripheral velocity in m/s
ca=180; // Axial velocity in m/s
T01=27+273; // Ambient temperature in kelvin
Cp=1.005; // Specific heat in KJ/kg K
r=1.4; // Specific heat ratio
R=287; // Characteristic gas constant in J/kg K

eff_s=(rp^((r-1)/r)-1)*T01/DelT_rise;
wf=(DelT_rise*Cp*10^3)/(u*ca*(tand(beta_1)-tand(beta_2)));

disp ("%",eff_s*100,"Stage Efficiency = ");
disp (wf,"Work done factor = ");
