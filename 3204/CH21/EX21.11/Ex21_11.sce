// Initilization of variables
v_a=2 // m/s // velocity at end A
r=0.05 // m // radius of the disc
alpha=30 // degree // angle made by the bar with the horizontal
// Calculations 
// Soving eqn's 1 & 2 and substuting eqn 1 in it we get eq'n for omega as,
omega=(v_a*(sind(alpha))^2)/(r*cosd(alpha)) // radian/second
// Results
clc
printf('The anguar veocity of the bar is %f radian/second \n',omega)
