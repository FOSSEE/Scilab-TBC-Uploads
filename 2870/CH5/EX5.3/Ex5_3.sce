clc;clear;
//Example 5.3

//given data
P=150;
Vliquid=0.6/1000;//im m^3
t=40*60;//in sec
Ac=8*10^-6;

//from Table A-5
//from P = 150 kPa
h=2693.1;
ug=2519.2;
vf=0.001053;
vg=1.1594;

//calculations
m=Vliquid/vf;
md=m/t;
disp(md,'mass flow rate in kg/s');
V=md*vg/(Ac);
disp(V,'exit velocity in m/s');
Eflow=h-ug;
Et=h;
disp(Eflow,'flow energy in kJ/kg');
disp(Et,'total energy in kJ/kg');
Emass=md*Et;
disp(Emass,'rate at which energy leaves the cooker in kW')
