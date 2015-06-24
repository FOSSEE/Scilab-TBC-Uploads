clc;funcprot(0); //Example  6.8

//Initializing the variables 
rho = 1000;
v = 66 ;
Q = 0.13;
g = 9.81; 
z =240;

//Calculations
P_Jet =  0.5*rho*v^2*Q;
P_Supp = rho*g*Q*z;
P_Lost =  P_Supp -P_Jet;
h = P_Lost/(rho*g*Q);
eff = P_Jet/P_Supp;

disp(eff*100,"Part(d) Efficiency(%) :", h, "Part(C) head used to overcome losses (m): ", P_Supp/1000 , "Part(b) power supplied from the reservoir (kW):", P_Jet/1000 ,"PartI(a) power of the jet(kW)");