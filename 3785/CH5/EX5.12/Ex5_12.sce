// Example 5_12
clc;funcprot(0);
// Given data
D_s=1;// The diameter of jet in  inch
D=3;// The inside diameter of a pipe in inch
Q_s=100;// The jet volumetric flow rate in GPM (gallons per minute)
Q_1=500;// The volumetric flow rate in GPM
rho=1*10^3;// The density of water in kg/m^3

// Calculation
A_s=(%pi/4)*(D_s*2.54*10^-2)^2;// m^2
A=9*A_s;// m^2
Q_s=(Q_s*3.785*10^-3)/60;// m^3/s
Q_1=5*Q_s;// m^3/s
V_1=Q_1/(A-A_s);// m/s
V_s=Q_s/A_s;// m/s
// Assume dp=p_2-p_1;
dp=(A_s/A)*(1-(A_s/A))*rho*(V_s-V_1)^2;// The pressure rise in the jet pump in Pa
printf("\nThe pressure rise in the jet pump,p_2-p_1=%1.3e Pa",dp);
