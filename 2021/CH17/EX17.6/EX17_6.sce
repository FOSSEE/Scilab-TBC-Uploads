//Finding of inclination
rho=1000;
d=0.03;
V=16;
w=125;
//To Find
A=(%pi/4)*d^2;
P=rho*A*V^2;
Q=P*(16/32);
theta=asin((rho*A*V^2)/w);
disp("Inclination ="+string(theta)+" degrees");
