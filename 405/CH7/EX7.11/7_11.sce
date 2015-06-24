clear;
clc;
printf("\t\t\tExample Number 7.11 \n\n\n");
// reduction of convection in ar gap
// Example 7.11 (page no.-347) 
// solution

Tm = 300;// [K] mean temperature of air
dT = 20;// [degree celsius] temperature difference
R = 287;// [] universal gas constant
g = 9.81;// [m/s^(2)] acceleration due to gravity
p_atm = 101325;// [Pa] atmospheric pressure
// consulting table 7-13(page no.-344), we find that for gases, a value Grdel_into_Pr<2000 is necessary to reduce the system to one of pure conduction.
// at 300 K the properties of air are
k = 0.02624;// [W/m degree celsius]
Pr = 0.7;// prandtl no.
mu = 1.846*10^(-5);// [Kg/m s]
Beta = 1/300;
// we have
Grdel_into_Pr = 2000;

// Part A for spacing of 1cm

del = 0.01;// [m] spacing between plate
p = sqrt((Grdel_into_Pr*((R*Tm)^(2))*mu^(2))/(g*Beta*dT*del^(3)*Pr));// [Pa]
// or vacuum
vacuum = p_atm-p;// [Pa]
printf("vacuum necessary for glass spacings of 1 cm is %f Pa",vacuum);

// Part B for spacing of 2cm

del1 = 0.02;// [m] spacing between plate
p1 = sqrt(Grdel_into_Pr*(R*Tm)^(2)*mu^(2)/(g*Beta*dT*del1^(3)*Pr));// [Pa]
// or vacuum
vacuum1 = p_atm-p1;// [Pa]
printf("\n\n vacuum necessary for glass spacings of 2 cm is %f Pa",vacuum1);