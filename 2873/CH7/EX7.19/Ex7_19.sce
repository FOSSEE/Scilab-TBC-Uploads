// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 7 Example 19")
T=(200+273);//temperature of water in K
disp("clapeyron equation says,h_fg=T*v_fg*(dp/dT)_sat")
disp("from steam tables,vg=0.12736 m^3/kg,vf=0.001157 m^3/kg")
vg=0.12736;
vf=0.001157;
disp("v_fg=(vg-vf)_200oc in m^3/kg")
v_fg=(vg-vf)
disp("let us approximate,")
disp("(dp/dT)_sat_200oc=(deltaP/deltaT)_200oc=(P_205oc-P_195oc)/(205-195) in Mpa/oc")
disp("here from steam tables,P_205oc=1.7230 Mpa,P_195oc=1.3978 Mpa")
P_205oc=1.7230;//pressure at 205 degree celcius in Mpa
P_195oc=1.3978;//pressure at 195 degree celcius in Mpa
(P_205oc-P_195oc)/(205-195)
disp("substituting in clapeyron equation,")
disp("h_fg in KJ/kg")
h_fg=T*v_fg*(P_205oc-P_195oc)*1000/(205-195)
disp("so calculated enthalpy of vaporisation=1941.25 KJ/kg")
disp("and enthalpy of vaporisation from steam table=1940.7 KJ/kg")
