clear;
clc;
printf('FUNDAMENTALS OF HEAT AND MASS TRANSFER \n Incropera / Dewitt / Bergman / Lavine \n EXAMPLE 3.9   Page 145 \n'); //Example 3.9
// Heat conduction through Rod

kc = 398;    //[W/m.K] From Table A.1, Copper at Temp 335K
kal = 180;    //[W/m.K] From Table A.1, Aluminium at Temp 335K
kst = 14;    //[W/m.K] From Table A.1, Stainless Steel at Temp 335K
h = 100;      //[W/m^2.K] Heat Convection Coeff of Air
Tsurr = 25+273;    //[K] Temperature of surrounding Air
D = 5*10^-3;    //[m] Dia of rod
To = 100+273.15;    //[K] Temp of opposite end of rod

//For infintely long fin m = h*P/(k*A)
mc = (4*h/(kc*D))^.5;
mal = (4*h/(kal*D))^.5;
mst = (4*h/(kst*D))^.5;
x = linspace(0,.300,100);
Tc = Tsurr + (To - Tsurr)*2.73^(-mc*x) - 273;
Tal = Tsurr + (To - Tsurr)*2.73^(-mal*x) -273;
Tst = Tsurr + (To - Tsurr)*2.73^(-mst*x) -273;
clf();
plot(x,Tc,x,Tal,x,Tst);
xtitle("Temp vs Distance", "x (m)", "T (degC)");
legend ("Cu", "2024 Al", "316 SS");

//Using eqn 3.80
qfc = (h*%pi*D*kc*%pi/4*D^2)^.5*(To-Tsurr);
qfal = (h*%pi*D*kal*%pi/4*D^2)^.5*(To-Tsurr);
qfst = (h*%pi*D*kst*%pi/4*D^2)^.5*(To-Tsurr);

printf("\n\n (a) Heat rate \n        For Copper = %.2f W \n        For Aluminium = %.2f W \n        For Stainless steel = %.2f W",qfc,qfal,qfst);

//Using eqn 3.76 for satisfactory approx
Linfc = 2.65/mc;
Linfal = 2.65/mal;
Linfst = 2.65/mst;

printf("\n\n (a) Rods may be assumed to be infinite Long if it is greater than equal to \n        For Copper = %.2f m \n        For Aluminium = %.2f m \n        For Stainless steel = %.2f m",Linfc,Linfal,Linfst);
//END