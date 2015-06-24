clc;clear;
//Example 3.5

//given values
m=4;
V=80/1000;//converting into m^3
P=160;

//Values from Table A-12
vf=0.0007437;
vg=0.12348;
T=-15.60;
hf=31.21;
hfg=209.90;

//caluclation
v=V/m;
//vg>v>vf therefore it is a saturated mix
//hence temp will same as saturation temp
disp(T,'the temperature in celcius')
x=(v-vf)/(vg-vf);//x=vg/vfg i.e the dryness fraction
disp(x,'the quality');
h=hf+x*hfg;
disp(h,'the enthalpy of the refrigerant in kJ/kg');
mg=x*m;
Vg=mg*vg;
disp(Vg,'the volume occupied by the vapor phase in m^3')
