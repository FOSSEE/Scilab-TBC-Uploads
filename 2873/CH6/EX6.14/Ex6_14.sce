// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 6 Example 14")
x1=0.5;//dryness fraction 
m1=100;//mass of steam in kg
v1=0.8475;//
disp("it is constant volume process")
disp("volume of vessel(V)=mass of vapour * specific volume of vapour")
disp("initial specific volume,v1")
disp("v1=vf_100Kpa+x1*vfg_100 in m^3/kg")
disp("at 100 Kpa from steam table;")
disp("hf_100Kpa=417.46 KJ/kg,uf_100Kpa=417.36 KJ/kg,vf_100Kpa=0.001043 m^3/kg,hfg_100Kpa=2258 KJ/kg,ufg_100Kpa=2088.7 KJ/kg,vg_100Kpa=1.6940 m^3/kg")
hf_100Kpa=417.46;
uf_100Kpa=417.36;
vf_100Kpa=0.001043;
hfg_100Kpa=2258;
ufg_100Kpa=2088.7;
vg_100Kpa=1.6940;
disp(" here vfg_100Kpa=vg_100Kpa-vf_100Kpa in m^3/kg")
vfg_100Kpa=vg_100Kpa-vf_100Kpa
disp("so v1=vf_100Kpa+x1*vfg_100Kpa in m^3/kg")
v1=vf_100Kpa+x1*vfg_100Kpa
disp("and volume of vessel(V)=m1*x1*v1 in m^3")
V=m1*x1*v1
disp("enthalpy at 1,h1=hf_100Kpa+x1*hfg_100Kpa in KJ/kg")
h1=hf_100Kpa+x1*hfg_100Kpa
disp("internal energy in the beginning=U1=m1*u1 in KJ")
U1=m1*(uf_100Kpa+x1*ufg_100Kpa)
disp("let the mass of dry steam added be m,final specific volume inside vessel,v2")
disp("v2=vf_1000Kpa+x2*vfg_1000Kpa")
disp("at 2000 Kpa,from steam table,")
disp("vg_2000Kpa=0.09963 m^3/kg,ug_2000Kpa=2600.3 KJ/kg,hg_2000Kpa=2799.5 KJ/kg")
vg_2000Kpa=0.09963;
ug_2000Kpa=2600.3;
hg_2000Kpa=2799.5;
disp("total mass inside vessel=mass of steam at2000 Kpa+mass of mixture at 100 Kpa")
disp("V/v2=V/vg_2000Kpa+V/v1")
disp("so v2=1/((1/vg_2000Kpa)+(1/v1))in m^3/kg")
v2=1/((1/vg_2000Kpa)+(1/v1))
disp("here v2=vf_1000Kpa+x2*vfg_1000Kpa in m^3/kg")
disp("at 1000 Kpa from steam table,")
disp("hf_1000Kpa=762.81 KJ/kg,hfg_1000Kpa=2015.3 KJ/kg,vf_1000Kpa=0.001127 m^3/kg,vg_1000Kpa=0.19444 m^3/kg")
hf_1000Kpa=762.81;
hfg_1000Kpa=2015.3;
vf_1000Kpa=0.001127;
vg_1000Kpa=0.19444;
disp("here vfg_1000Kpa=vg_1000Kpa-vf_1000Kpa in m^3/kg")
vfg_1000Kpa=vg_1000Kpa-vf_1000Kpa
disp("so x2=(v2-vf_1000Kpa)/vfg_1000Kpa")
x2=(v2-vf_1000Kpa)/vfg_1000Kpa
disp("for adiabatic mixing,(100+m)*h2=100*h1+m*hg_2000Kpa")
disp("so mass of dry steam at 2000 Kpa to be added(m)in kg")
disp("m=(100*(h1-h2))/(h2-hg_2000Kpa)")
m=(100*(h1-(hf_1000Kpa+x2*hfg_1000Kpa)))/((hf_1000Kpa+x2*hfg_1000Kpa)-hg_2000Kpa)
disp("quality of final mixture=x2")
x2








