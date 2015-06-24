clc
p0=35*10^3; //Pa
T0=235; //K
ps=65.4*10^3; //N/m^2
R0=8314; //Nm/mole K
M=28;

R=R0/M;
rho_0=p0/R/T0;

Va=sqrt(2*(ps-p0)/rho_0);
disp("Speed of the aircraft =")
disp(Va)
disp("m/s")