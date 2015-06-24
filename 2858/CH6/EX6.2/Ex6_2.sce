//example 6.2
clc; funcprot(0);
N60=10;
Df=2;
B=10;
Se=25;
qnetall=N60/0.08*(1+0.33*Df/B)*Se/25;
disp(qnetall,"allowed pressure in kN/m^2");

