 clc; funcprot(0); //Example 23.3 

//Initializing the variables
g = 9.81;
H = 12;
n = 0.8;
w = 300*2*%pi/60;
Q = 0.28;

//Calculations
V_f1 = 0.15*sqrt(2*g*H);
V_f2 =V_f1;
V_w1 = sqrt(n*g*H);
u1 = V_w1;
theta = atand(V_f1/u1);
u2 =0.5*u1;
B2 = atand(V_f2/u2);
r1 = u1/w;
b1 = Q/(V_f2*0.9*2*%pi*r1); // vanes occupy 10 per cent of the circumference hence 0.9
b2 = 2*b1;

disp(b2*1000,"Width of runner at exit(mm) :", b1*1000,"Width of runner at inlet (mm) :", B2, "Vane angle at exit (degree) :",theta, "Guide vane angle (degree) :");