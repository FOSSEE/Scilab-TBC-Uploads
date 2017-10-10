//Example 7_10
clc;clear;
// Given values
L_m=0.991;// Length of the model truck in m
h_m=0.257;// Height of the model truck in m
w_m=0.159;// Width of the model truck in m
V_p=26.8;// Velocity of the prototype in m/s
T=25;// °C
C=16;// Geometric ratio

// Properties
//For air at atmospheric pressure and at T=25°C,
rho_m=1.184;// Density of air in kg/m^3
mu_m=1.849*10^-5;// Viscosity of air in kg/m.s

// Calculation 
// From table 7.7,
V_m=[20 25 30 35 40 45 50 55 60 65 70];// Velocity  of the model truck in m/s
F_D=[12.4 19.0 22.1 29.0 34.3 39.9 47.2 55.5 66.0 77.6 89.9];// Drag force of the model truck in N
for(i=1:11)
    A_m=w_m*h_m;// Area of the model truck in m^2
    C_Dm(i)=(F_D(i))/((1/2)*rho_m*(V_m(i))^2*A_m);// Drag coefficient 
    Re_m(i)=(rho_m*V_m(i)*w_m)/(mu_m);// Reynolds number of the model truck
end
xlabel('Re*10^-5');
ylabel('C_D');
xtitle('FIGURE 7-41');
plot((Re_m/10^5),C_Dm,'o');
rho_p=rho_m;// Density of air in kg/m^3
w_p=w_m;// Width of the prototype in m
mu_p=mu_m;// Viscosity of air in kg/m.s
Re_p=(rho_p*V_p*w_p)/(mu_p);// Reynolds number of the prototype
A_p=A_m;// // Area of the prototype in m^2
C_Dp=C_Dm(10);// Drag coefficient 
F_Dp=(1/2)*rho_p*V_p^2*C^2*A_p*C_Dp;// Aerodynamic drag on the prototype in N
printf("The aerodynamic drag on the vehicle=%0.0f N\n",F_Dp);
// The answer provided in the textbook is wrong
