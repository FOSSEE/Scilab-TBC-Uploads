//Example 6_7
clc;clear;
// Given values
v=18.5;// Flow rate of water in gal/min
D=0.0650;// The inner diameter of the pipe in ft
rho=62.3;// The density of water at room temperature in lbm/ft^3
P_1g=13// lbf/in^2
W_f=12.8;// The total weight of the faucet assembly plus the water in lbf

// Calculation
A_c=(%pi*D^2/4);// ft^2
V=(v*0.1337)/(A_c*60);// ft/s 
//V=V_1=V_2
m=(rho*v)*(0.1337/60);// lbm/s
A_1=((%pi*(0.780)^2)/4);// ft^2
F_rx=((-m*V)/32.2)-(P_1g*A_1);// lbf
F_rz=((-m*V)/32.2)+W_f;// lbf
F_r=[F_rx F_rz]// lbf
F_f=-[F_r];// lbf
printf('The net force on the flange,F_faucet on flange=%0.2fi+(%0.1f)k \n',F_f(1),F_f(2));
