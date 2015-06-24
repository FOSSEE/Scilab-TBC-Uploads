// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 6 Example 12")
V=2;//volume of vessel in m^3
disp("from steam table at 150 degree celcius")
disp("vf=0.001091 m^3/kg,vg=0.3928 m^3/kg")
Vf=0.001091;
Vg=0.3928;
disp("so volume occupied by water(Vw)=3*V/(3+2) in m^3")
Vw=3*V/(3+2)
disp("and volume of steam(Vs)=2*V/(3+2) in m^3")
Vs=2*V/(3+2)
disp("mass of water(mf)=Vw/Vf in kg")
mf=Vw/Vf
disp("mass of steam(mg)=Vs/Vg in kg")
mg=Vs/Vg
disp("total mass in tank(m)=mf+mg in kg")
m=mf+mg
disp("quality or dryness fraction(x)")
disp("x=mg/m")
x=mg/m
disp("NOTE=>answer given in book for mass=1103.99 kg is incorrect and correct answer is 1101.945 which is calculated above.")
