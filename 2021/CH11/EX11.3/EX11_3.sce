//Finding of Pressure Gradienr,Avg velocity,Reynolds number
//Given
mu=.5;
spgr=1.2;
rho=1200;
D=.1;
x=147.15;
//To Find
dp=-(x*4)/D;
dp1=-dp;
v=(1/(32*mu))*(-dp)*D^2;
R=(rho*v*D)/mu;
disp("Pressure Gradient ="+string(dp1)+" N/m^3");
disp("Average Velocity ="+string(v)+" N/m^3");
disp("Reynolds Number ="+string(R)+" N/m^3");
