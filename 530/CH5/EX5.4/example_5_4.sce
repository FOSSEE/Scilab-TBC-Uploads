clear;
clc;

// A Textbook on HEAT TRANSFER by S P SUKHATME
// Chapter 5
// Heat Transfer by Forced Convection


// Example 5.4
// Page 219
printf("Example 5.4, Page 219 \n\n")

D_i = 0.05 ; // [m]
m = 300 ; // [kg/min]
m1 = m/60 ; // [kg/sec]
rho = 846.7 ; // [kg/m^3]
k = 68.34 ; // [W/m K]
c = 1274; //  [J/kg K]
v = 0.2937*10^-6 ; // [m^2/s]
Pr = 0.00468 ;

Re_D = 4*m1/(%pi*D_i*rho*v);

// Assuming both temperature and velocity profile are fully developed over the length of tube
// using eqn 5.3.6
Nu_D = 6.3 + 0.0167*(Re_D^0.85)*(Pr^0.93);

h = Nu_D*k/D_i;

// Equating the heat transferred through the wall of the tube to the change of enthalpy pf sodium
L = 300/60*1274*(500-400)/(h*%pi*D_i*30)

printf("Length of tube over which the temperature rise occurs = %f m",L)