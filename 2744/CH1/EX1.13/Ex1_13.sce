clear;
clc;
d = 1;//diameter of steel bar in inches
d1 = 3/2;//external diameter of brass tube in inches
d2 = 1;//internal diameter of brass tube in inches
t = 100;//in F
alpha_s = 0.0000062;//alpha of steel in "per F"
alpha_b = 0.000010;//alpha of brass in "per F"
E_s = 30*10^6;//in lb/in^2
E_b = 14*10^6;//in lb/in^2
A_s = 0.25*%pi*d^2;//section area of steel bar in in^2
A_b = 0.25*%pi*(d1^2-d2^2);//section area of brass tube in in^2
p_b = t*(alpha_b-alpha_s)*E_s/((A_b/A_s)+(E_s/E_b));
p_s = (A_b/A_s)*p_b;
printf('The stresses induced in each metal are, p_b = %d lb/in^2\n       p_s = %d lb/in^2',p_b,p_s);
