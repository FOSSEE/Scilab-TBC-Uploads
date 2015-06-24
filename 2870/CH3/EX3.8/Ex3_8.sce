clc;clear;
//Example 3.8

//given values
T=80;
P=5;

//from Table A–7
//at compressed liq given conditions
u=333.82;

//from Tablw A-4
//at saturation
usat=334.97;

//calcualtion
e=(usat-u)/u*100;
disp(u,'internal energy of compressed liquid water using data from the compressed liquid table in kJ/kg ');
disp(usat,'internal energy of compressed liquid water using saturated liquid data in kJ/kg ');
disp(e,'the % error involved in the second case is ')
