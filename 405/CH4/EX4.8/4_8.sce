clear;
clc;
printf("\t\t\tExample Number 4.8\n\n\n");
// semi-infinite cylinder suddenly exposed to convection 
// illustration4.8
// solution

d = 0.05;// [m] diameter of aluminium cylinder 
Ti = 200;// [degree celsius] initial temperature of of cylinder
Te = 70;// [degree celsius] environment temperature
k = 215;// [W/m degree celsius] heat transfer coefficient of plate
h = 525;// [W/square meter degree celsius] convection heat transfer coefficient 
alpha = 8.4*10^(-5);// [square meter/s] constant
x = 0.10;// [m] distance at which temperature is calculated from end
t = 60;// [s] time after which temperature is measured
// so that the parameters for use with figure(4-5)
A = h*sqrt(alpha*t)/k;
B = x/(2*sqrt(alpha*t));
// from figure (4-5)
z = 1-0.036;
S_of_X = z;
// for the infinite cylinder we seek both the axis- and surface-temperature ratios.
// the parameters for use with fig(4-8) are 
r_o = d/2;// [m] radius of aluminium cylinder 
r = d/2;// [m]  for surface temperature ratio
C = k/(h*r_o);
D = (alpha*t/r_o^(2));
y = 0.38;
// this is the axis temperature ratio.
// to find the surface-temperature ratio,we enter figure (4-11),using 
R = r/r_o;
u = 0.97;
// thus 
w = y;// at r = 0
v = y*u;// at r = r_o
C_of_O_axis = w;// at r = 0
C_of_O_r_o = v;// at r = r_o
// combining the solutions for the semi-infinite slab and infinite cylinder, we have 
t = S_of_X*C_of_O_axis;
s = S_of_X*C_of_O_r_o;
// the corresponding temperatures are 
T_axis = Te+t*(Ti-Te);
T_r_o = Te+s*(Ti-Te);
printf("the temperature at the axis is %f degree celsius",T_axis);
printf("\n the temperature at the surface is %f degree celsius",T_r_o);



