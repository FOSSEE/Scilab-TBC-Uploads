//Finding of Force Exerted
//Given
rho=1000;
d=0.07;
V=25;
theta=20;
theta2=15;
//To Find
A=(%pi/4)*d^2
Fx=rho*A*V^2*(sin(%pi/9)+cos(%pi/12));
Fy=rho*A*V^2*(sin(%pi/9)-sin(%pi/12));
disp("Fx ="+string(Fx)+" Newtons");
disp("Fy ="+string(Fy)+" Newtons");
