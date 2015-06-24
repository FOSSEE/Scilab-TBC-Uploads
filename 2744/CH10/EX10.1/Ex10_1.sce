clear;
clc;
d = 2;// feet
p = 250;// lb/in^2
f = 12000;// lb/in^2
t_limit = p*d*12/(2*f) ;// inches
printf('The necessary thickness of metal for seamless pipe is %.2f inches',t_limit);
