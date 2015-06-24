//Finding of Weight
//Given
D=0.05;
v=1.5*10^-4;
V=10;
rho=1.25;
Cd=0.5;
//TO Find
A=(%pi/4)*D^2;
Fd=Cd*rho*A*((V^2)/2);
disp("Weight of the ball ="+string(Fd)+" Newtons");
