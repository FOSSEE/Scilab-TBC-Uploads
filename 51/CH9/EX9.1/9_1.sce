clc;
clear;
U=25;//ft/sec
p=0;//gage
b=10;//ft
t=1.24*(10^-3);//where t=stress*(x^0.5)
a=0.744;//where a=p/(1-((y^2)/4))
p1=-0.893;//lb/(ft^2)
drag1=2*integrate('t*b/(x^0.5)','x',0,4);
drag2=integrate('(((a*(1-((y^2)/4))))-p1)*b','y',-2,2);
disp("lb",drag1,"The drag when plate is parallel to the upstream flow=")
disp("lb",drag2,"The drag when plate is perpendicular to the upstream flow=")

