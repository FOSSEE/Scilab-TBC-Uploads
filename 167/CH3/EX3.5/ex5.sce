//ques5
//Properties of Saturated Liquid Vapour Mixture
clc
V=0.080;//volume in m^3 given
m=4;//in kg given
v=V/m;//in m^3/kg
vf=0.0007437;//@160kPa from table A-4 in m^3/kg
vg=0.12348;//@160kPa from table A-4 in m^3/kg
//(a)Temperature
Tsat=-15.60;//in C from table A-4
printf('\n(a) Since vf<v<vg so saturated region, so temperature at saturated state = %.2f C \n',Tsat);
//(b)Quality Factor
x=(v-vf)/(vg-vf);
printf('(b) Quality factor =%.3f \n',x);
//(c) Enthalpy of refrigerant
hf=31.21//from table A-12 @ 160kpa in kJ/kg
hfg=209.90//from table A-12 @ 160kpa in kJ/kg
h=hf+x*hfg;// n kJ/kg
printf('(c) Enthalpy of refrigerant = %.1f kJ/kg \n',h);
//(d) Volume occupied by phase
mg=x*m//mass of vapour n kg
Vg=mg*vg;//volume of vapour in m^3
printf('(d) Volume of vapour =%.4f m^3 \n',Vg);
