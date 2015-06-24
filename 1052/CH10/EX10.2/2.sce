clc;
//Example 10.2
//page no 99
printf("Example 10.2 page no 99\n\n");
//determining the depth of  atlantic ocean 
rho=1000//density of water
P1=10//pressure at which depth is to be determine
P2=1//pressure at the ocean surface z1
z1=0//ocean surface
g=9.807//gravitational constant
printf("\n density rho=%f kg/m^3\n pressure P1=%f atm\n pressure P2=%f atm\n height at ocean surface z1=%f m",rho,P1,P2,z1);
z2=z1-(P1-P2)*101325/(rho*g)//depth  at pressure P2
printf(" \n depth z2=%f m",z2);
