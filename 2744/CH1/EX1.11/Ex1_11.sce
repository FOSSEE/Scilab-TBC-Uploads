clear ;
clc ;
l = 8;//length in feet
d = 0.5;//diameter in inches
r = 30;//distance between two rods in inches
P = 2000;//load in lb-wt
E_s = 30*10^6;//modulus of elsticity of steel rod
E_b = 16*10^6;//modulus of elsticity of brass rod
A_s = 0.25*%pi*d^2;//section area in in^2
p_b = P/(A_s*(1+(E_s/E_b)));
p_s = (P/A_s) - p_b ;
P_b = A_s*p_b;
P_s = A_s*p_s;
printf('P_s = %.1f lb/in^2\n and P_b = %.1f lb/in^2',P_s,P_b);
x = r*P_b/P ;//
printf('\n  x = %.2f inches',x);
