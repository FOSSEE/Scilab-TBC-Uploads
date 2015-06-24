//Finding of Pressure Gradient , Shear at wall
//Given
D=15;
f=0.05;
r=4;
tau=0.01962;
//To Find
R=64/f;
dp=-(tau*(2/r));
dp1=-dp;
r1=D/2;
tau2=(tau*r1)/r;
disp("Pressure Gradient ="+string(dp1)+" N/m^3");
disp(" Shear at wall ="+string(tau2)+" N/cm^2");
