clear;
clc;
printf('FUNDAMENTALS OF HEAT AND MASS TRANSFER \n Incropera / Dewitt / Bergman / Lavine \n EXAMPLE 6.3   Page 357 \n'); //Example 6.3
// Convection Mass Transfer coefficient 

//Operating Conditions

Dab = .288*10^-4;        //[m^2/s] Table A.8 water vapor-air (319K)
pas = .1;            //[atm] Partial pressure at surface
pasurr = .02;            //[atm] Partial pressure at infinity
y0 = .003;            //[m] Tangent at y = 0 intercepts y axis at 3 mm

//From Measured Vapor Pressure Distribution
delp = (0 - pas)/(y0 - 0);            //[atm/m]
hmx = -Dab*delp/(pas - pasurr);       //[m/s] 

printf("\n\n Convection Mass Transfer coefficient at prescribed location = %.4f m/s", hmx);
//END