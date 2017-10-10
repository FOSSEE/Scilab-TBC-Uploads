clc;
m=35; // mass flow rate of air in kg/s
D=0.76; // Impeller diameter in m
N=11500; // speed in rpm
eff_c=0.8; // Efficiency of the compressor 
rp=4.2; // Pressure ratio
cr=120; // Radial velocity in m/s
p01=1; // Inlet pressure in bar
T01=47+273; // Inlet temperature in kelvin
Cp=1.005; // specific heat at constant pressure in kJ/kg K
r=1.4; // Specific heat ratio
R=287; // Characteristic gas constant in J/kg K

T_02=T01*rp^((r-1)/r);
T02=T01+(T_02-T01)/eff_c;
// ignoring the effects of the velocity of flow
p02=rp/p01;
row2=p02*10^5/(R*T02);
Atip=m/(row2*cr);
AW=Atip/(3.14*D); // Axial width

disp ("cm",AW*100,"Axial Width = ");
