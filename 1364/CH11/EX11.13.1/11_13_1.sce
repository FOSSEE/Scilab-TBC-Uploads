clc
//initialisation of variables
v= 10 //ft/sec
g= 32 //ft/sec^2
w= 62.3 //lbf/ft^3
l= 200 //ft
t= 0.5 //sec
//CALCULATIONS
dp= w*l*v/(g*t*144)
//RESULTS
printf (' Rise in pressure = %.1f lbf/in^2',dp)
