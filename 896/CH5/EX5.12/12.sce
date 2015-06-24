clc
//Example 5.12
//Calculate the absolute pressure at the top of a inverted manometer tube
p_atm=14.7//lbf/in^2
g=32.2//ft/s^2
//one end of the inverted manometer is immersed in a tank and the other end is open to atmosphere 10 ft below tank level
//pt 1 is at tank water level, pt 2 is at top of inverted manometer and pt3 is at the other end of manometer
dh=10//ft
v3=(2*g*dh)^0.5//ft/s
p1=p_atm//lbf/in^2
rho_water=62.3//lbm/ft^3
//Difference of height between pt 1 and pt 2 is 40 ft
dh1=40//dft
p2=p1-(rho_water*v3^2/2/32.2/144)-(rho_water*g*dh1)/32.2/144//lbf/in^2
printf("The absolute pressure at the top of the inverted manometer is %f lbf/in^2",p2);