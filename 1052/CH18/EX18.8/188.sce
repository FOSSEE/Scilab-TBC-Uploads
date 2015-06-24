clc;
//Example 18.8
//page no 233
printf("\n Example 18.8 page no 233\n\n");
//refer to example no 18.7
rho=1000//density
g=9.807//gravitational acc.
h_f=38.39//head loss
P_rise=rho*g*h_f//pressure rise across the pump
P_rise=475000//in book by mistake this value instead original value 
q=0.0126//flow rate from example 18.7
W_dot=q*P_rise//ideal pumping requirement(the fluid power)
printf("\n W_dot fluid power=%f kw",W_dot);//printing mistake in book in putting value of P_rise
