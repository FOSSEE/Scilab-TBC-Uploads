clc;clear;
//Example 3.4

//given values
mt=10;
mf=8;
T=90;

//Values from Table A-4
P=70.183;//in kPa
vf=0.001036;
vg=2.3593;

//caluclation
mg=mt-mf;
V=mf*vf+mg*vg;// V= Vg + Vf
disp(V,'the volume of the tank in m^3');
disp(P,'the pressure in the tank in kPa')
