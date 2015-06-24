clear;
clc;
printf("\t\t\tExample Number 4.5\n\n\n");
// sudden exposure of semi-infinite solid slab to convection
// illustration4.5
// solution

alpha = 8.4*10^(-5);// [square meter/s] constant
Ts = 200;// [degree celsius] initial temperature of of slab
Te = 70;// [degree celsius] environment temperature 
k = 215;// [W/m degree celsius] heat transfer coefficient of slab
h = 525;// [W/square meter degree celsius] heat transfer coefficient 
x = 0.04;// [m] depth at which temperature is calculated
T_x_t = 120;// [degree celsius] temperature at depth 0.04 m
// we can use equation (4-15) or figure (4-5) for solution of this problem
// by using figure it is easier to calculate  it involves iterative method to solve because time appeares in both the variables 
// h*sqrt(alpha*t)/k and x/(2*sqrt(alpha*t))
K = (T_x_t-Ts)/(Te-Ts); 
// we seek the values of t such that the above value of K is equal to the value of K which comes out from graph
// we therfore try values of t and obtain other readings
printf("The iteration are listed below\n");
// at t = 1000s
t = 1000;// [s] time
A =  h*sqrt(alpha*t)/k;
B = x/(2*sqrt(alpha*t));
printf(" t\t\th*sqrt(alpha*t)/k \t x/(2*sqrt(alpha*t)) \t (T_x_t-Ts)/(Te-Ts)");
printf("\n %f\t\t %f \t %f \t\t 0.41",t,A,B);
t = 3000;// [s] time
A =  h*sqrt(alpha*t)/k;
B = x/(2*sqrt(alpha*t));
printf("\n %f\t\t %f \t %f \t\t 0.61",t,A,B);
t = 4000;// [s] time
A =  h*sqrt(alpha*t)/k;
B = x/(2*sqrt(alpha*t));
printf("\n %f\t\t %f \t %f \t\t 0.68",t,A,B);
printf("\n consequently the time required is approximately 3000 second");




