clc;clear;
//Example 14.1

//given data
V=5*5*3;//volume of the room
RH=0.75;
P=100;
T=25;

//constants used
Ra=0.287;//in kPa.m^3 / kg.k
Rv=0.4615;//in kPa.m^3 / kg.k

//from Table A-2a and A-4
cp=1.005;
Psat=3.1698;
hg=2564.6;

//calculation
Pv=RH*Psat;
Pa=P-Pv;
w=0.622*Pv/(P-Pv);
h=cp*T+w*hg;
ma=V*Pa/(Ra*(T+273));
mv=V*Pv/(Rv*(T+273));
disp(Pa,'the partial pressure of dry air in kPa');
disp(w,'the specific humidity in kg water/kg of dry air');
disp(h,'the enthalpy per unit mass of the dry air in kJ');
disp(ma,'mass of air in kg');
disp(mv,'mass of water vapour in kg');
