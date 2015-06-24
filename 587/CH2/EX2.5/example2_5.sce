clear;
clc;

//Example2.5[Cooling of a Hot Metal Ball in Air]
//Given:-
T_ball=300;//Temeprature of ball[degree Celcius]
T_surr=25;//Temperature of ambient air[degree Celcius]
//Solution:-
//The ball in initially at a uniform temperature and is cooled uniformly from the entire outer surface.Also, the temperature within the ball changes with the radial distance r and the time t. T=T(r,t)
disp("The thermal conductivity is given to be variable,and there is no heat generation in the ball, therefore the differential equation governing the variation of temperature in the ball is")
disp("(1/(r^2)d/dr((r^2)k(dT/dr))=rho*c(dT/dt)")