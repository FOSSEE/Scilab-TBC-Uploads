clc;funcprot(0);//Example 5.8

//Initializing the variables 
V = 200;     //Velocity in still air
Vr = 700;    //velocity of gas relative to engine
mf = 1.1;    // Fuel Consumption
r = 1/40 ;    
P1 =0;
P2 = 0;

//Calculations
m1 =  mf/r;
T = m1*((1+r)*Vr -V);
disp(T/1000, "(a)Thrust (kN) :");     

W = T*V;
disp(W/1000, "(b)Work done per second (kW) :");

Loss = 0.5*m1*(1+r)*(Vr-V)^2;
disp(W/(W+Loss)*100 ,"(c)Efficiency (%):");