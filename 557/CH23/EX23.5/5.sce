clc; funcprot(0);
// Example 23.5

//Initializing the variables
s = 0.03;
P = 185*10^3;
rho = 0.86*10^3;
A = 2.8*10^-2;
N = 2250/60;
D = 0.46;

//Calculations
R0 = 0.46/2;
Ws_Wp = 1-s;
n = Ws_Wp;
Pf = s*P;
Q = (2*Pf*A^2/(3.5*rho))^(1/3);
Wp = 2*%pi*N; 
Ri = sqrt((1/Ws_Wp)*(R0^2 -P/(rho*Q*Wp^2))); // Modified equation for power transmission.
Di = 2*Ri;
T = P/(rho*Wp^3 *D^5);
 
disp(T,"Torque Coefficient :", Di*1000,"Mean diameter (mm) : ");