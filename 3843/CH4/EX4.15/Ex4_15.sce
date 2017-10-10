// Example 4_15
clc;funcprot(0);
// Given data
W_s=-10;// hp
d_1=1;// The diameter at inlet in inch
d_2=1.5;// The diameter at exit in inch
V_1=30;// The inlet velocity of water in ft/sec

// Calculation
A_1=(%pi/4)*(d_1^2);// in^2
A_2=(%pi/4)*(d_2^2);// in^2
V_2=(A_1/A_2)*V_1;// The exit velocity of water in ft/sec
rho=62.4;// kg/m^3
m=rho*(A_1/144)*V_1;// The mass flux in lbm/sec
dP=rho*[((-W_s*550)/m)-((V_2^2-V_1^2)/(2*32.4))];// The pressure rise in lbf/ft^2
printf("\n The maximum pressure rise,P_2-P_1=%5.0f lbf/ft^2 or %3.1f psi",dP,dP/144);
