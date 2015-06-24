clc;funcprot(0); //Example 6.4

//Initializing the variables 

x = 1.5;
y =0.5;
H = 1.2;
A = 650*10^-6;
Q =0.117;
g = 9.81;

//Calculations
Cv = sqrt(x^2/(4*y*H));
Cd = Q / (60*A*sqrt(2*g*H));
Cc = Cd/Cv;

disp(Cc, "Coefficient of contraction :",Cd, "Coefficient of Discharge :", Cv, "Coefficient of velocity :");