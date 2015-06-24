clc;clear;
//Example 7.3

//given data
m=5;
P1=140;
T1=20;
P2=100;

//from refrigerant-134a data
//at P1 and T1
s1=1.0624;
v1=0.16544;
//at P2
v2=v1;
vf=0.0007529;
vg=0.19254;
sf=0.07188;
sfg=0.87995;

//calculations
// vf < v2 <vg
x2=(v2-vf)/(vg-vf);
s2=sf+x2*sfg;
dS=m*(s2-s1);
disp(dS,'entropy change in the process in kJ/k')
