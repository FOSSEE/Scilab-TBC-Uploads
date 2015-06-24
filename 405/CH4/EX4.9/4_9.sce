clear;
clc;
printf("\t\t\tExample Number 4.9\n\n\n");
// finite length cylinder suddenly exposed to convection 
// illustration4.9
// solution

d = 0.05;// [m] diameter of aluminium cylinder 
Ti = 200;// [degree celsius] initial temperature of of cylinder
Te = 70;// [degree celsius] environment temperature
k = 215;// [W/m degree celsius] heat transfer coefficient of plate
h = 525;// [W/square meter degree celsius] convection heat transfer coefficient 
alpha = 8.4*10^(-5);// [square meter/s] constant
x1 = 0.00625;// [m] distance at which temperature is calculated from end
t = 60;// [s] time after which temperature is measured
r = 0.0125;// [m] radius at which temperature is calculated
// to solve this problem we combine the solutions from heisler charts for an infinite cylinder and an infinite plate in accordance with the combination shown in fig (4-18f)
// for the infinite plate problem 
L = 0.05;// [m]
// the x position is measured fromthe center of the plate so that
x = L-x1;// [m]
A = k/(h*L);
B = (alpha*t/L^(2));
// from figures (4-17) and (4-10) respectively
thetha_o_by_i = 0.75;
thetha_by_i = 0.95;
// so that
thetha_by_i_plate = thetha_o_by_i*thetha_by_i;
// for the cylinder 
r_o = d/2;// [m] radius of the cylinder
R = r/r_o;
C = k/(h*r_o);
D = (alpha*t/r_o^(2));
// and from figures (4-8) and (4-11), respectively
thetha_o_by_i_cyl = 0.38;
thetha_by_o = 0.98;
// so that
thetha_by_i_cyl = thetha_o_by_i_cyl*thetha_by_o;
// combibing the solutions for the plate and cylinder gives
thetha_by_i_short_cyl = thetha_by_i_plate*thetha_by_i_cyl;
// thus
T = Te+thetha_by_i_short_cyl*(Ti-Te);
printf("the temperature at a radial position of 0.0125 m and a distance of 0.00625m from one end of cylinder 60 second after exposure to environment is %f degree celsius",T);


