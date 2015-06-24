clear;
clc;
printf("\t\t\tExample Number 4.2\n\n\n");
// Semi-infinite solid with sudden change in surface conditions
// illustration4.2
// solution

k = 45;// [W/m per degree celsius] thermal conductivity of steel block
alpha = 1.4*10^(-5);// [square meter/s] constant
Tb = 35;// [degree celsius] block temperature
x = 0.025;// [m] depth at which temperature is calculated
t = 30;// [s] time after which temperature is to be calculated 
// we can make use of the solutions for the semi-infinite solid given as equation (4-8) and (4-13a)
// for case A (by suddenly raising the  surface temperature to 250 degree celsius)
To = 250;// [degree celsius]
T_x_t = To+(Tb-To)*(erf(x/(2*(alpha*t)^(1/2))));
printf("temperature at depth of 0.025 m after 30 second for case 1 is %f degree celsius",T_x_t);
// for the constant heat flux case B we make use of equation (4-13a)
// since qo/A is given 
q_by_A = 3.2*10^(5);// [W/square meter]
T_x_t1 = Tb+(2*q_by_A*(alpha*t/%pi)^(1/2)*exp(-x^(2)/(4*alpha*t))/k)-(q_by_A*x*(1-erf(x/(2*(alpha*t)^(1/2))))/k);// [degree celsius]
printf("\n temperature at depth of 0.025 m after 30 second for case 2 is %f degree celsius",T_x_t1)
// for the constant heat flux case the surface temperature after 30 s would be evaluated with x = 0 in equation(4-13a)
x = 0;// [m] at the surface
T_x_o = Tb+(2*q_by_A*(alpha*t/%pi)^(1/2)*exp(-x^(2)/(4*alpha*t))/k)-(q_by_A*x*(1-erf(x/(2*(alpha*t)^(1/2))))/k);// [degree celsius]
printf("\n surface temperature after 30 second is %f degree celsius",T_x_o);






 