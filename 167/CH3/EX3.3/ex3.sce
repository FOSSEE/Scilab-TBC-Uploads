//ques3
//Volume and Energy Change during Evaporation
clc
vg=1.6941; //saturated vapor specific volume from table A-5 @ 100kPa in m^3/Kg
vf=0.001043;//saturated liquid specific volume from table A-5 @ 100kPa in m^3/Kg
vfg=vg-vf;//in m^3/Kg
m=0.2;//in kg
//(a) Volume change 
dV=m*vfg;//Volume in m^3
printf('(a) Volume change = %.4f m^3 \n',dV);
//(b) Amount of energy Transfer to water
hfg=2257.5;//change in enthalpy from table A-5 @ 100kPa in kJ/Kg
E=m*hfg;//In kJ
printf('(b) Energy Transferred = %.1f kJ',E);
