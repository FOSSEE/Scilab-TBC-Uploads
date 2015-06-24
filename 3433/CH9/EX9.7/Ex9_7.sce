clear;
clc;
funcprot(0);

//given data
P = 600;//power in kW
Cp = 0.3;//power coefficient
D = 16;//diameter in m
rho = 1025;//density in kg/m^3

//Calculations
cx1 = ((P*1000)/(0.5*rho*0.25*%pi*(D^2)*Cp))^(1/3);
Ut = (14/30)*%pi*0.5*D;
J = Ut/cx1;

//Results
printf('The minimum flow speed of the water = %.2f m/s.',cx1);
printf('\n The blade tip-speed ratio (when full power is reached) = %.2f',J);
