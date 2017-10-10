clc;
clear all;
disp("Energy emitted by sun")
T=5750;//K
ds=1.4*10^9;//m diameter of sun
de=12.8*10^6;//m diameter of earth
d=15*10^10;//m distance between earth and sun

rs=ds/2;
re=de/2;
sigma=5.67*10^(-8);
As=4*%pi*rs^2;//m^2 surface area of sun
Eb=sigma*As*T^4;//W
disp("W",Eb,"total energy emitted by sun =")
Eo= Eb/(4*%pi*d^2);
disp("W/m^2",Eo, "Energy received outside earth''s atmosphere =")
Ee=Eo*%pi*re^2;
disp("W/m^2",Ee, "Energy received by earth =")
x=(1-0.42)*Eo// direct energy reaching the earth
y=0.22*x// diffusion rate
z=x+y// total radiation reaching the collector
ap=1.6*1.6*cos(%pi*40/180)// projected area
Es=ap*z;
disp("W",Es,"The energy received by the solar collector =")
