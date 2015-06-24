//Finding of Lift,Drag,Power Required
//Given
A=4;
V=40*(5/18);
Cd1=0.8;
Cd2=0.2;
rho=1.25;
//To Find
FL=Cd1*A*rho*((V^2)/2);
Fd=Cd2*A*rho*((V^2)/2);
F=sqrt(FL^2+Fd^2);
P=Fd*V;
P1=P/1000;
theta=(FL/Fd);
theta1=(tan(theta))^-1;
disp("Lift Force ="+string(FL)+" Newton");
disp("Power Required ="+string(P1)+" Kilo Watts");
disp("Drag Force ="+string(Fd)+" Newton");
disp("Resultant Force ="+string(F)+" Newton");
disp("Angle of Flow Direction ="+string(theta1)+" degrees");
