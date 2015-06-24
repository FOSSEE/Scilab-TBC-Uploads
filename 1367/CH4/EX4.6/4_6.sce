//Find atomic radius
//Ex:4.6
clc;
clear;
close;
n=2;//BCC
p=7.86;//density in gm/cm^3
aw=55.85;//atomic weight of iron
na=6.023*10^23;//Avagadrro's no.
a=((aw*n)/(na*p))^(1/3);//in cm
a1=a*10^8;//in angstorm
disp(a1,"unit cell dimension of iron (in angstorm) = ");
r=sqrt(3)*a1/4;
disp(r,"atomic radius = ");