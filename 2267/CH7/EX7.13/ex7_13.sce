//Part A Chapter 7 Example 13
clc;
clear;
close;
mg=100;//kg
pg=100;//kPa
x1=0.5;//dryness at 1000kPa
//At 100 kPa
hf=417.46;//kJ/kg
uf=417.46;//kJ/kg
vf=0.001043;//m^3/kg
hfg=2258;//kJ/kg
ufg=2088.7;//kJ/kg
vfg=1.6940;//m^3/kg

v1=vf+x1*vfg;//m^3/kg
h1=hf+x1*hfg;//kJ/kg
V=mg*x1*v1;//m^3
U1=mg*(hf+x1*ufg);//kJ

//At 2000 kPa
vg=0.09963;//m^3/kg
ug=2600.3;//m^3/kg
hg=2799.5;//kJ/kg
v2=1/(1/vg+1/v1);//m^3/kg

//At 1000 kPa
hf=762.81;//kJ/kg
hfg=2015.3;//kJ/kg
vf=0.001127;//m^3/kg
vg=0.19444;//m^3/kg

x2=(v2-vf)/(vg-vf);//dryness at 1000 ka
h2=hf+x2*hfg;//kJ/kg
m=(mg*h1-mg*h2)/(h2-hg);//kg
disp("Mass of dry steam at 2000 kPa to be added is "+string(m)+" kg");
disp("Quality of final mixture is "+string(x2));
