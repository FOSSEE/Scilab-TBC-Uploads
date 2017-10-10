//clearance in a bearing
//Exa_1_5
clc;
clear;

F=400;        //damping resistance in N
v=10;        //velocity in m/s
mu=0.3445;        //absolute viscosity in Pa-s
A=0.1;        //area of plates in m^2
c=F/v;        //damping constant in N-s/m
//modelling as flat plate type damper
h=mu*A/c;        //clearance between the plates
disp(h,"clearance between the plates in m = ");
