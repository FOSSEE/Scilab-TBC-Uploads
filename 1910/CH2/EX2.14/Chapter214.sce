// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Introduction to heat transfer by S.K.Som, Chapter 2, Example 14")
//Considering two very long slender rods of the same diameter but of different materials.
//The base of each rod is maintained at 100°C while the surfaces of the rod are exposed to 20°C
//By traversing length of each rod with a thermocouple it was observed that tempratures of rod were equal at the position xA=0.15m and xB=0.075 from base.
xA=0.15;
xB=0.075;
//Thermal conductivity of rod A is known to be kA=72 W/(m*K)
kA=72;
//In case of a very long slender rod we use the tip boundary condition thetaL=0 as L--->infinity
//Therfore we can write for the locations where the tempratures are equal thetab*e^(-mA*xA)=thetab*e^(-mB*xB) or xA/xB=mB/mA,Again mB/mA=(kA/kB)^0.5
//So kB=kA*(xB/xA)^2
//The thermal conductivity of Rod B iskB
disp("The thermal conductivity of Rod B kB in W/(m*K) is ")
kB=kA*(xB/xA)^2



































