clc;clear;
//Example 3.3

// constants used
Hfg=2257.5;//enthalpy of vaporization in kJ/kg

//given values
m=200/1000;//converting in kg
P=100;

//Values from Table A-5
vg=1.6941;
vf=0.001043;//specific vol of sat liq and vapor

//caluclation
vfg=vg-vf;
V=m*vfg;
disp(V,'the volume change in m^3');
E=m*Hfg;
disp(E,'amount of energy transferred to the water in kJ')
