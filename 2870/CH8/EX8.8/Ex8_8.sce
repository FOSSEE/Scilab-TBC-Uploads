clc;clear;
//Example 8.8

//given data
T0=20+273;//in K
P1=0.14;
T1=-10;
P2=0.8;
T2=50;

//the properties of refrigerant
//at inlet
h1=246.36;
s1=0.9724;
//at outlet
h2=286.69;
s2=0.9802;
dO=h2-h1-T0*(s2-s1);// O refers to exergy
dO=round(dO);
disp(dO,'the exergy change of the refrigerant in kJ/kg')
wmin=dO;
disp(wmin,'the minimum work input that needs to be supplied is in kJ/kg')
