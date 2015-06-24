clc;funcprot(0); //Example 6.6

//Initializing the variables 
Cd = 0.6;         //Coefficient of discharge
Q = 0.28;
x = 90;             //Theta
g = 9.81;
dH = 0.0015;

//Calculations
H = (Q*(15/8)/(Cd*sqrt(2*g)*tand(x/2)))^(2/5)
Frac_Q = 5/2 *( dH/H);

disp(Frac_Q*100, "Percentage error in discharge(%)");