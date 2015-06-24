clc
//Example 6.4
//Calculate the gauge pressure in the tank
q=300//gal/min flow rate
d=3.068//in inner diameter
a=(%pi)*(3.068/12)^2/4//ft^2
//1 ft^3 = 7.48 gal
//1 min = 60 sec
v_avg=q/a/60/7.48//ft/s
f=0.0091//dimentionless fanning friction factor
dx=3000//ft
rho=62.3//lbm/ft^3
dp=4*f*(dx/(d/12))*rho*(v_avg^2/2)/32.2/144//lbf/in^2 or psi
printf("The gauge pressure in the tank is %f psi",dp);