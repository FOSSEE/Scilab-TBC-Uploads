//Find density of Copper
//Ex:4.4
clc;
clear;
close;
r=1.278;//radius of copper in angstorm
//copper has FCC structure
a=4*r/sqrt(2);//in angstorm
disp(a,"a (in Angstorm) = ");
a1=a*10^-8;//in cm
aw=63.54;//atomic weight of copper
ne=4;//fcc
na=6.023*10^23;//Avagadro's no.
p=aw*ne/(na*a1^3);//in g/cm^3
p1=10^3*p;
disp(p1,"Density of Copper (in kg/cu m)");