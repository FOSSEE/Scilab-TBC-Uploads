clc;clear;
//Example 4.11

//given data
T=100;
P=15;

//from Table A–7
//at P=15 mPa and T = 100 C
hg=430.39;
hf=419.17
vf=0.001;
Psat=101.42;//in kPa

//calculations

//part a
h=hg;
disp(h,'enthalpy of liquid water by using compressed liquid tables in kJ/kg');

//part b
//Approximating the compressed liquid as a saturated liquid at 100°C
h=hf;
disp(h,'enthalpy of liquid water by approximating it as a saturated liquid in kJ/kg');

//part c
h=hf + vf*(P*1000 - Psat );
disp(h,'enthalpy of liquid water by using the correction given by Eq. 4–38 in kJ/kg');
