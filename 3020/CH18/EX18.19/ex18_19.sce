clc;
clear all;
i=5e-3;//current flowing through specimen in Amp
V=1.35;//voltage across specimen
l=1e-2;//lenth of the sample
b=5e-3;//breadth of the sample
t=1e-3;//thickness of the sample
a=5e-6;//area of the sample
vy=20e-3;//hall voltage
H=0.45;//magnetic field
R=V/i;//resistance
rho=R*a/l;//resistivity
Ey=vy/t;//hall effect
J=i/a;//current density
ne=H*J/Ey;
Rh=3*%pi/(ne*8);//hall coefficient
disp('m^3/C',Rh,'hall coefficient is:');
u=Rh/rho;//mobility of Ge sample
disp('m^2/V*s',u,'mobility of Ge sample is:')

