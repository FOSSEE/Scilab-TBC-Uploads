clear;
clc;
d = 4;// feet
p = 200;// lb/in^2
f = 15000;// lb/in^2
n = 0.7;// efficiency
t_limit = p*d*12/(4*f*n);// inches
printf('The thickness of the plate required = %.2f inches',t_limit);

//the answer is correct only, but it is approximated in the text book.
