clc;
//Example 10.3
//page no 99 fig 10.1
printf("Example 10.3 page no 99 fig 10.1\n\n\n");
//a cylindrical tank contain water and immiscible  oil ,tank isvopen to the atmosphere
rho=1000//density of water 
SG=0.89//special gravity of oil
rho_oil=rho*SG//density of oil
printf("\ density of water rho=%f kg/m^3\n density of oil rho_oil=%f kg/m^3",rho,rho_oil);
//applying bernoulli equationbetween point 1 and 2 to calculate the gauge pressure at water oil interface
z1=0//depth at surface
P1=1//pressure at point 1
z2=-10.98//depth at point 2
printf("\n depth at point 1, z1=%f m\n pressure P1=%f atm\n depth at point 2,z2=%f m",z1,P1,z2);
g=9.807//gravitational constant
P2_gu=rho_oil*g*(z1-z2)//gauge pressure at point 2
printf("\n gauge pressure P2_gu=%f Pag",P2_gu);
//gauge preesure at bottom z3
z3=-13.72
P3=P2_gu+rho*g*(z2-z3)
printf("\n depth z3=%f m\n pressure at bottom P3=%f Pag",z3,P3);
d=6.1//diameter  of tank
s=%pi*d^2/4//surface area of tank 
printf("\n diameter of tank d=%f m\n surface area of tank s=%f m^2",d,s);
P3_ab=P3+101325//absolute pressure
F=P3_ab*s//pressure force at the bottom of tank
printf("\n absolute pressure P3_ab=%f Pag\n pressure force at bottom F=%f N",P3_ab,F); 
//the force on the side of the tank ,within water layer
F_s=(%pi*d)*integrate('-11910-9807*z','z',-13.72,-10.98);
printf("\n force on the side of the tank F_s=%f  N",F_s);

