//Finding of Discharge
//Given
rho=1000;
d=0.05;
P=1226.25;
//To Find
A=(%pi/4)*d^2;
V=P/(rho*A);
V1=sqrt(V);
Q=A*V1;
disp("Discharge ="+string(Q)+" m^3/sec");
