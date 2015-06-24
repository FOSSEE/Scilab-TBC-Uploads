clc; funcprot(0); //Example 14.5 

//Initializing the variables
D = 0.3;
Q = 0.8;
rho = 1.2;
f = 0.008;
L_entry = 10;
L_exit = 30;
Lt = 20*D;//Transition may be represented by a separation loss equivalent length of 20 × the approach duct diameter
K_entry = 4;
K_exit = 10
l = 0.4;        // length of cross section
b = 0.2;        // width of cross section

//Calculations
A = %pi*D^2/4;
Dp1 = 0.5*rho*Q^2/A^2*(K_entry + 4*f*(L_entry+Lt)/D);
area = l*b;
perimeter =2*(l+b);
m = area/perimeter;
Dp2 = 0.5*rho*Q^2/area^2*(K_exit + f*L_exit/m);
Dfan =  Dp1+Dp2;

disp(Dfan,"fan Pressure input (N/m2) :");