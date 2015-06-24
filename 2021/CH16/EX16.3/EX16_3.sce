//Finding of Diameter
//Given
W=80*9.81;
Fd=80*9.81;
V=25;
Cd=0.5;
rho=1.25;
//To Find
D=(2*Fd)/(Cd*rho*(V^2)*(4/%pi));
D1=sqrt(D);
disp("Diameter ="+string(D1)+" meter");
