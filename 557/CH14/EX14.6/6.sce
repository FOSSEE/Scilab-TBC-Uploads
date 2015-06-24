clc; funcprot(0); //Example 14.6

//Initializing the variables
D = [0.15 0.3];
rho = 1.2;
f = 0.008;
L_entry = 10;
L_exit = 20;
Lt = 20*D(2);//Transition may be represented by a separation loss equivalent length of 20 × the approach duct diameter
K = 4;
Q1 = 0.2;

//Calculations
Q2 = 4*Q1;
A = %pi*D^2/4;
Dp1 = 0.5*rho*Q1^2/A(1)^2*(K + 4*f*L_entry/D(1));
Dp2 = 0.5*rho*Q2^2/A(2)^2*(4*f*(L_exit + Lt)/D(2));
Dfan =  Dp1+Dp2;

disp(Dfan,"fan Pressure input (N/m2) :");