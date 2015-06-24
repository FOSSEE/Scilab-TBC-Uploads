clc;
G=6.67*10^-11   //Universal gravitational constant in Nmsquare/kg square
mm=7.36*10^22;  //mass of moon in kg
r=1.74*10^6;   //radius of moon in m
m=75;          //weight of man in kg
g=(G*mm)/(r*r);  //calculating g in m/sec square
w=m*g;          //calculating weight in Newton
disp(g,"Accelaration due to gravity at its surface in m/sec square= ");  //displaying g
disp(w,"Mans weight on moon in Newton = ");  //displaying mass of man on moon.