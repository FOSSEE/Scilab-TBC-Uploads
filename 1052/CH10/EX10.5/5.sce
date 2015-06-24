clc;
//Example 10.5
//page no 103
printf("\n Example 10.5 page no 103\n\n");
//a hydrometer is a liquid specific gravity indicator with the value being indicated by the level at which the surface of the liquid intersects the sten when floating in avliquid
F=0.13//the total hydrometer weight, N
SG=1.3//sp. gravity of liquid
D=.008//stem diameter of hydrometer,m
rho_w=1000//density of water ,kg/m^3
g=9.807
pi=22/7
printf("\n force F=%f N\n sp.gravity SG=%f \n stem diameter D=%f m\n density rho_w=%f kg/m^3\n g=ravitational acc. g=%f m/s^2",F,SG,D,rho_w,g);
h=(4*F/(pi*D^2*rho_w*g))*(1-1/SG)//height where it will float
printf("\n height h=%f m",h);
