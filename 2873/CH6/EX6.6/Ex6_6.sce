// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 6 Example 6")
V=0.5;//capacity of rigid vessel in m^3
disp("in a rigid vessel it can be treated as constant volume process.")
disp("so v1=v2")
disp("since final state is given to be critical state,then specific volume at critical point,")
disp("v2=0.003155 m^3/kg")
v2=0.003155;//specific volume at critical point in m^3/kg
disp("at 100 degree celcius saturation temperature,from steam table")
disp("vf_100=0.001044 m^3/kg,vg_100=1.6729 m^3/kg")
vf_100=0.001044;
vg_100=1.6729;
disp("and vfg_100=vg_100-vf_100 in m^3/kg")
 vfg_100=vg_100-vf_100
disp("thus for initial quality being x1")
disp("v1=vf_100+x1*vfg_100")
disp("so x1=(v1-vf_100)/vfg_100")
v1=v2;//rigid vessel
x1=(v1-vf_100)/vfg_100
disp("mass of water initially=total mass*(1-x1)")
disp("total mass of fluid/water(m)=V/v2 in kg")
m=V/v2
disp("volume of water(v)=m*vf_100 in m^3")
v=m*vf_100
